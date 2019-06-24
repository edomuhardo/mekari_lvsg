MekariLvsg::Engine.routes.draw do
  get 'page/example'
  mount MountainView::Engine => "/"
end
