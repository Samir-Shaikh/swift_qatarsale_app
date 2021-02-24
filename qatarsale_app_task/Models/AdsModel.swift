//
//  AdsModel.swift
//  qatarsale_app_task
//
//  Created by Sam on 24/02/21.
//

import Foundation
import Gloss

//MARK: - RootClass
public class AdsModel: Glossy {
    public var coverImage : String!
    public var seoDesc : String!
    public var categoryId : Int!
    public var categoryName : String!
    public var categoryPath : [CategoryPath]!
    public var createdAt : String!
    public var createdBy : String!
    public var definitions : [AnyObject]!
    public var desc : String!
    public var endDate : String!
    public var endStatus : Int!
    public var fee : Int!
    public var hasLive : Bool!
    public var hasPdf : Bool!
    public var id : Int!
    public var imagesCount : Int!
    public var isActiveCategory : Bool!
    public var isBusiness : Bool!
    public var isExpired : Bool!
    public var isFavourite : Bool!
    public var isMyProduct : Bool!
    public var isPromoted : Bool!
    public var isSold : Bool!
    public var isUpdated : Bool!
    public var liveURL : AnyObject!
    public var ownerId : String!
    public var ownerPhoneNumber : String!
    public var pdfUrl : AnyObject!
    public var rejectedMsgAr : String!
    public var rejectedMsgEn : String!
    public var showroomId : AnyObject!
    public var showroomName : AnyObject!
    public var showroomUri : AnyObject!
    public var soldDate : String!
    public var startDate : String!
    public var startingPrice : Int!
    public var status : Int!
    public var tag : Int!
    public var title : String!
    public var type : Int!
    public var updatedAt : String!
    public var updatedBy : String!

    //MARK: Default Initializer
    init()
    {
        coverImage = ""
        seoDesc = ""
        categoryId = 0
        categoryName = ""
        categoryPath = []
        coverImage = ""
        createdAt = ""
        createdBy = ""
        definitions = []
        desc = ""
        endDate = ""
        endStatus = 0
        fee = 0
        hasLive = false
        hasPdf = false
        id = 0
        imagesCount = 0
        isActiveCategory = false
        isBusiness = false
        isExpired = false
        isFavourite = false
        isMyProduct = false
        isPromoted = false
        isSold = false
        isUpdated = false
        liveURL = nil
                ownerId = ""
        ownerPhoneNumber = ""
        pdfUrl = nil
                rejectedMsgAr = ""
        rejectedMsgEn = ""
        seoDesc = ""
        showroomId = nil
                showroomName = nil
                showroomUri = nil
                soldDate = ""
        startDate = ""
        startingPrice = 0
        status = 0
        tag = 0
        title = ""
        type = 0
        updatedAt = ""
        updatedBy = ""
    }


    //MARK: Decodable
    public required init?(json: JSON){
        if let coverImage : String = "_CoverImage" <~~ json {
            self.coverImage = coverImage
        }else{
            self.coverImage = ""
        }
        if let seoDesc : String = "_SeoDesc" <~~ json {
            self.seoDesc = seoDesc
        }else{
            self.seoDesc = ""
        }
        if let categoryId : Int = "categoryId" <~~ json {
            self.categoryId = categoryId
        }else{
            self.categoryId = 0
        }
        if let categoryName : String = "categoryName" <~~ json {
            self.categoryName = categoryName
        }else{
            self.categoryName = ""
        }
        if let categoryPath : [CategoryPath] = "categoryPath" <~~ json {
            self.categoryPath = categoryPath
        }else{
            self.categoryPath = []
        }
        if let coverImage : String = "coverImage" <~~ json {
            self.coverImage = coverImage
        }else{
            self.coverImage = ""
        }
        if let createdAt : String = "createdAt" <~~ json {
            self.createdAt = createdAt
        }else{
            self.createdAt = ""
        }
        if let createdBy : String = "createdBy" <~~ json {
            self.createdBy = createdBy
        }else{
            self.createdBy = ""
        }
        if let definitions : [AnyObject] = "definitions" <~~ json {
            self.definitions = definitions
        }else{
            self.definitions = []
        }
        if let desc : String = "desc" <~~ json {
            self.desc = desc
        }else{
            self.desc = ""
        }
        if let endDate : String = "endDate" <~~ json {
            self.endDate = endDate
        }else{
            self.endDate = ""
        }
        if let endStatus : Int = "endStatus" <~~ json {
            self.endStatus = endStatus
        }else{
            self.endStatus = 0
        }
        if let fee : Int = "fee" <~~ json {
            self.fee = fee
        }else{
            self.fee = 0
        }
        if let hasLive : Bool = "hasLive" <~~ json {
            self.hasLive = hasLive
        }else{
            self.hasLive = false
        }
        if let hasPdf : Bool = "hasPdf" <~~ json {
            self.hasPdf = hasPdf
        }else{
            self.hasPdf = false
        }
        if let id : Int = "id" <~~ json {
            self.id = id
        }else{
            self.id = 0
        }
        if let imagesCount : Int = "imagesCount" <~~ json {
            self.imagesCount = imagesCount
        }else{
            self.imagesCount = 0
        }
        if let isActiveCategory : Bool = "isActiveCategory" <~~ json {
            self.isActiveCategory = isActiveCategory
        }else{
            self.isActiveCategory = false
        }
        if let isBusiness : Bool = "isBusiness" <~~ json {
            self.isBusiness = isBusiness
        }else{
            self.isBusiness = false
        }
        if let isExpired : Bool = "isExpired" <~~ json {
            self.isExpired = isExpired
        }else{
            self.isExpired = false
        }
        if let isFavourite : Bool = "isFavourite" <~~ json {
            self.isFavourite = isFavourite
        }else{
            self.isFavourite = false
        }
        if let isMyProduct : Bool = "isMyProduct" <~~ json {
            self.isMyProduct = isMyProduct
        }else{
            self.isMyProduct = false
        }
        if let isPromoted : Bool = "isPromoted" <~~ json {
            self.isPromoted = isPromoted
        }else{
            self.isPromoted = false
        }
        if let isSold : Bool = "isSold" <~~ json {
            self.isSold = isSold
        }else{
            self.isSold = false
        }
        if let isUpdated : Bool = "isUpdated" <~~ json {
            self.isUpdated = isUpdated
        }else{
            self.isUpdated = false
        }
        if let liveURL : AnyObject = "liveURL" <~~ json {
            self.liveURL = liveURL
        }else{
        }
        if let ownerId : String = "ownerId" <~~ json {
            self.ownerId = ownerId
        }else{
            self.ownerId = ""
        }
        if let ownerPhoneNumber : String = "ownerPhoneNumber" <~~ json {
            self.ownerPhoneNumber = ownerPhoneNumber
        }else{
            self.ownerPhoneNumber = ""
        }
        if let pdfUrl : AnyObject = "pdfUrl" <~~ json {
            self.pdfUrl = pdfUrl
        }else{
        }
        if let rejectedMsgAr : String = "rejectedMsgAr" <~~ json {
            self.rejectedMsgAr = rejectedMsgAr
        }else{
            self.rejectedMsgAr = ""
        }
        if let rejectedMsgEn : String = "rejectedMsgEn" <~~ json {
            self.rejectedMsgEn = rejectedMsgEn
        }else{
            self.rejectedMsgEn = ""
        }
        if let seoDesc : String = "seoDesc" <~~ json {
            self.seoDesc = seoDesc
        }else{
            self.seoDesc = ""
        }
        if let showroomId : AnyObject = "showroomId" <~~ json {
            self.showroomId = showroomId
        }else{
        }
        if let showroomName : AnyObject = "showroomName" <~~ json {
            self.showroomName = showroomName
        }else{
        }
        if let showroomUri : AnyObject = "showroomUri" <~~ json {
            self.showroomUri = showroomUri
        }else{
        }
        if let soldDate : String = "soldDate" <~~ json {
            self.soldDate = soldDate
        }else{
            self.soldDate = ""
        }
        if let startDate : String = "startDate" <~~ json {
            self.startDate = startDate
        }else{
            self.startDate = ""
        }
        if let startingPrice : Int = "startingPrice" <~~ json {
            self.startingPrice = startingPrice
        }else{
            self.startingPrice = 0
        }
        if let status : Int = "status" <~~ json {
            self.status = status
        }else{
            self.status = 0
        }
        if let tag : Int = "tag" <~~ json {
            self.tag = tag
        }else{
            self.tag = 0
        }
        if let title : String = "title" <~~ json {
            self.title = title
        }else{
            self.title = ""
        }
        if let type : Int = "type" <~~ json {
            self.type = type
        }else{
            self.type = 0
        }
        if let updatedAt : String = "updatedAt" <~~ json {
            self.updatedAt = updatedAt
        }else{
            self.updatedAt = ""
        }
        if let updatedBy : String = "updatedBy" <~~ json {
            self.updatedBy = updatedBy
        }else{
            self.updatedBy = ""
        }
        
    }


    //MARK: Encodable
    public func toJSON() -> JSON? {
        return jsonify([
        "_CategoryPath" ~~> categoryPath,
        "_CoverImage" ~~> coverImage,
        "_SeoDesc" ~~> seoDesc,
        "categoryId" ~~> categoryId,
        "categoryName" ~~> categoryName,
        "categoryPath" ~~> categoryPath,
        "coverImage" ~~> coverImage,
        "createdAt" ~~> createdAt,
        "createdBy" ~~> createdBy,
        "definitions" ~~> definitions,
        "desc" ~~> desc,
        "endDate" ~~> endDate,
        "endStatus" ~~> endStatus,
        "fee" ~~> fee,
        "hasLive" ~~> hasLive,
        "hasPdf" ~~> hasPdf,
        "id" ~~> id,
        "imagesCount" ~~> imagesCount,
        "isActiveCategory" ~~> isActiveCategory,
        "isBusiness" ~~> isBusiness,
        "isExpired" ~~> isExpired,
        "isFavourite" ~~> isFavourite,
        "isMyProduct" ~~> isMyProduct,
        "isPromoted" ~~> isPromoted,
        "isSold" ~~> isSold,
        "isUpdated" ~~> isUpdated,
        "liveURL" ~~> liveURL,
        "ownerId" ~~> ownerId,
        "ownerPhoneNumber" ~~> ownerPhoneNumber,
        "pdfUrl" ~~> pdfUrl,
        "rejectedMsgAr" ~~> rejectedMsgAr,
        "rejectedMsgEn" ~~> rejectedMsgEn,
        "seoDesc" ~~> seoDesc,
        "showroomId" ~~> showroomId,
        "showroomName" ~~> showroomName,
        "showroomUri" ~~> showroomUri,
        "soldDate" ~~> soldDate,
        "startDate" ~~> startDate,
        "startingPrice" ~~> startingPrice,
        "status" ~~> status,
        "tag" ~~> tag,
        "title" ~~> title,
        "type" ~~> type,
        "updatedAt" ~~> updatedAt,
        "updatedBy" ~~> updatedBy,
        ])
    }

}

//MARK: - CategoryPath
public class CategoryPath: Glossy {
    public var id : Int!
    public var name : String!

    //MARK: Default Initializer
    init()
    {
        id = 0
        name = ""
    }


    //MARK: Decodable
    public required init?(json: JSON){
        if let id : Int = "id" <~~ json {
            self.id = id
        }else{
            self.id = 0
        }
        if let name : String = "name" <~~ json {
            self.name = name
        }else{
            self.name = ""
        }
        
    }


    //MARK: Encodable
    public func toJSON() -> JSON? {
        return jsonify([
        "id" ~~> id,
        "name" ~~> name,
        ])
    }

}

