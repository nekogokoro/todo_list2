class TasksController < ApplicationController
  def index
    @q = current_user.tasks.ransack(params[:q])
    @tasks =@q.result(distinct: true).recent.page(params[:page]).per(6)
  end

  def todo
    @q = current_user.tasks.where(done: false).ransack(params[:q])
    @tasks = @q.result(distinct: true).recent.page(params[:page]).per(10)
  end

  def done
    @q = current_user.tasks.where(done: true).ransack(params[:q])
    @tasks = @q.result(distinct: true).recent.page(params[:page]).per(10)
  end

  def new
    @task = Task.new
  end
  
  def create
    @task = current_user.tasks.new(task_params)
    if @task.save
      flash[:success] = "タスク「#{@task.title}」を登録しました ｷﾀ━(ﾟ∀ﾟ)━!"
      redirect_to root_url
    else
      render :new
    end
  end

  def show
    @task = current_user.tasks.find(params[:id])
  end

  def edit
    @task = current_user.tasks.find(params[:id])
  end

  def update
    @task = current_user.tasks.find(params[:id])
    if @task.update(task_params)
      flash[:success] = "タスク「#{@task.title}」を更新しました！ ガンバレ(┌ﾟдﾟ)┌ ヨッ"
      redirect_to root_url
      
    else
      render :edit
    end
  end

  def destroy
    @task = current_user.tasks.find(params[:id])
    @task.destroy
    flash[:warning] = "タスク「#{@task.title}」を削除しました ﾟ(ﾟ´Д｀ﾟ)ﾟ。"
    redirect_to root_url
  end

  private

    def task_params
      params.require(:task).permit(:title, :description, :image, :done, :public, :deadline)
    end
end