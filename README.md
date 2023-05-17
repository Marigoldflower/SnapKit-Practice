# SnapKit-Practice


## SnapKit 사용법 및 주의사항
1. View를 메모리에 생성하고 addSubview(_:) 메소드를 통해 View를 올리는 것까지는 기존의 오토레이아웃과 똑같다.

2. 우선 SnapKit을 사용할 때 주의해야 할 점이 있다. 
leading, trailing이 모두 잡혀야지만 width를 설정해줄 필요가 없어지고
top과 bottom이 모두 잡혀야지만 height를 설정해줄 필요가 없어진다.
만일 leading만 잡혀있고 trailing은 잡혀있지 않다면 width를 설정해주어야 한다.
top만 잡혀있고 bottom은 잡혀있지 않다면 height를 설정해주어야 한다.



## SnapKit 실제 사용
- tableView 만들 때처럼 leading, trailing, top, bottom의 Constraints를 모두 0으로 만들기
```
subView.snp.makeConstraints { make in
      make.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
}
```

- subView를 정중앙에 놓기 
```
subView.snp.makeConstraints { make in
      make.width.height.equalTo(100)
      make.center.equalToSuperview()

      이렇게 centerX, centerY를 나눠서 사용할 수도 있음⭐️
      make.centerX.equalToSuperview()
      make.centerY.eqaulToSuperview()
}
```

- subView width, height값 설정법
```
subView.snp.makeConstraints { make in
      make.width.eqaulTo(100)
      make.height.eqaulTo(200)

      width, height 값이 같을 경우 합쳐서 사용할 수 있음
      make.width.height.equalTo(100)
}
```

- subView leading, trailing, top, bottom 값 설정법 
```
subView.snp.makeConstraints { make in
      make.leading.equalTo(view.snp.leading).offset(30)
      make.top.equalTo(view.snp.top).offset(30)
      make.trailing.equalTo(view.snp.trailing).offset(-30)
      make.bottom.equalTo(view.snp.bottom).offset(-30)
}
```



