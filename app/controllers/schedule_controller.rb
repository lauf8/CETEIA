class ScheduleController < ApplicationController
    def index
    end
    respond_to do |format|
        format.html
        format.pdf do
          render pdf: "file_name", template
        end
      end
    end
  end
