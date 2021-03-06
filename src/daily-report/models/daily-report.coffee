angular.module 'Scrumble.daily-report'
.factory 'DailyReport', (Parse) ->
  class DailyReport extends Parse.Model
    @configure "DailyReport", "project", "message", "metadata","sections"

    @getByProject = (project) ->
      @query(
        where:
          project:
            __type: "Pointer"
            className: "Project"
            objectId: project.objectId
      ).then (response) ->
        if response.length > 0
          return response[0]
        else
          return null
