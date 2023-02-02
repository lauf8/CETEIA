class ScheduleController < ApplicationController
    def index
    end
    def show
      respond_to do |format|
        format.html
        format.pdf do
          render pdf: "Relatorio",
          template:"schedule/relatorio"
        end
      end
    end

  end