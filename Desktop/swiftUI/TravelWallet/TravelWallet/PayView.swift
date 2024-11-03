//
//  HomeView.swift
//  TravelWallet
//
//  Created by 이빈 on 11/3/24.
//
import SwiftUI

struct PayView: View {
  let items = [
    ("결제부터", "N빵하기", "n.circle.fill", Color.mint),
    ("친구에게", "송금하기", "paperplane.fill", Color.cyan),
    ("외화간", "환전하기", "dollarsign.arrow.circlepath", Color.yellow),
    ("트래블페이", "카드관리", "creditcard.fill", Color("CustomBlue")),
    ("내 지갑 한도", "확인하기", "eyes", Color.black)
  ]
  
  var body: some View {
    // Header
    VStack(spacing: 0) {
      HStack {
        Text("홈")
          .font(.system(size: 30, weight: .bold))
          .padding(.leading, 20)
        Text("소셜페이")
          .font(.system(size: 30, weight: .bold))
          .padding(.leading, 10)
          .foregroundColor(.gray)
        Spacer()
        Image(systemName: "qrcode.viewfinder")
          .font(.title2)
          .padding(.trailing, 5)
        Image(systemName: "bell")
          .font(.title2)
          .padding(.trailing, 20)
      }
      .padding(.top, 20)
      .padding(.bottom, 10)
      .background(Color("Background"))
      
      // Home
      ScrollView {
        HStack {
          Image(systemName: "wallet.pass.fill")
            .resizable()
            .frame(width: 30, height: 30)
            .foregroundColor(.white)
            .padding()
            .background(Circle().fill(Color.green.opacity(0.3)))
          Spacer()
          VStack(alignment: .leading, spacing: 4) {
            Text("드디어 나왔다!")
              .font(.subheadline)
              .foregroundColor(.gray)
            HStack {
              Text("트래블월렛")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.black)
              Text("플래티늄")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.blue)
              Text("카드")
                .font(.headline)
                .foregroundColor(.black)
            }
          }
          Spacer()
          Image(systemName: "chevron.right")
            .padding()
        }
        .padding()
        .background(
          LinearGradient(
            gradient: Gradient(colors: [Color("CustomMint"), Color("CustomSky")]),
            startPoint: .leading,
            endPoint: .trailing
          )
        )
        .cornerRadius(15)
        .padding(.top, 20)
        .padding(.horizontal, 20)
        
        VStack(alignment: .leading, spacing: 20) {
          HStack {
            Text("내 지갑")
              .font(.system(size: 26, weight: .bold))
            Image(systemName: "info.circle")
            
            Spacer()
            
            Button(action: {
              print("이용내역 보기")
            }) {
              HStack {
                Text("이용내역")
                Image(systemName: "chevron.right")
              }
              .foregroundColor(.black)
            }
          }
          .padding(20)
          
          HStack {
            Spacer()
            Text("아직 충전된 외화가 없습니다.")
              .foregroundColor(.gray)
            Spacer()
          }
          .padding(.horizontal, 20)
          
          Button(action: {
            print("충전")
          }){
            Text("충전하기")
              .font(.system(size: 18, weight: .bold))
              .foregroundColor(.white)
              .frame(maxWidth: .infinity)
              .padding()
              .background(Color("CustomBlue"))
              .cornerRadius(10)
          }
          .padding(20)
        }
        .background(Color.white)
        .cornerRadius(15)
        .padding(20)
        
        // 카카오뱅크 배너
        HStack {
          Image(systemName: "b.square.fill")
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.yellow)
            .background(Color.black)
            .cornerRadius(8)
            .padding(.leading, 10)
          VStack(alignment: .leading, spacing: 4) {
            Text("카카오뱅크 이용 중이시라면,")
              .font(.subheadline)
            Text("달러박스를 연동해 보세요!")
              .font(.headline)
              .fontWeight(.bold)
              .foregroundColor(.black)
          }
          .padding(.leading, 10)
          Spacer()
          Button(action: {
            print("닫기 버튼 클릭")
          }) {
            Image(systemName: "xmark")
              .foregroundColor(.black)
          }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .padding(.horizontal, 20)
        .padding(.bottom, 20)
        
        // 수평 스크롤
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(spacing: 10) {
            ForEach(items, id: \.0) { item in
              VStack(alignment: .leading, spacing: 5) {
                Image(systemName: item.2)
                  .font(.largeTitle)
                  .foregroundColor(item.3)
                  .padding(.bottom, 20)
                Text(item.0)
                  .font(.system(size: 20, weight: .bold))
                  .foregroundColor(.gray)
                Text(item.1)
                  .font(.system(size: 20, weight: .bold))
              }
              .frame(width: 135, height: 140, alignment: .topLeading)
              .padding(.top, 30)
              .padding(.leading, 20)
              .background(Color.white)
              .cornerRadius(20)
            }
          }
          .padding(.horizontal, 20)
        }
        
        VStack {
          Text("트래블월렛은 전자금융업 등록업체입니다.")
            .font(.footnote)
            .fontWeight(.light)
            .foregroundColor(.gray)
          Text("선불전자지급 수단 발행 및 관리업 02-002-00070")
            .font(.footnote)
            .fontWeight(.light)
            .foregroundColor(.gray)
        }
        .padding(.top, 40)
        .padding(.bottom, 30)
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color("Background").edgesIgnoringSafeArea(.all))
    }
  }
}

#Preview {
  PayView()
}
