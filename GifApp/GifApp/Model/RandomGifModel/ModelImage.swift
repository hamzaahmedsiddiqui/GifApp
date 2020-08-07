//
//	ModelImage.swift
//
//	Create by hamza Ahmed on 7/8/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelImage : Decodable {

//	let downsized : ModelDownsized?
//	let downsizedLarge : ModelDownsized?
//	let downsizedMedium : ModelDownsized?
//	let downsizedSmall : ModelDownsizedSmall?
//	let downsizedStill : ModelDownsized?
//	let fixedHeight : ModelFixedHeight?
//	let fixedHeightDownsampled : ModelFixedHeightDownsampled?
//	let fixedHeightSmall : ModelFixedHeight?
//	let fixedHeightSmallStill : ModelDownsized?
//	let fixedHeightStill : ModelDownsized?
	let fixedWidth : ModelFixedHeight?
//	let fixedWidthDownsampled : ModelFixedHeightDownsampled?
//	let fixedWidthSmall : ModelFixedHeight?
//	let fixedWidthSmallStill : ModelDownsized?
//	let fixedWidthStill : ModelDownsized?
//	let hd : ModelDownsizedSmall?
//	let looping : ModelLooping?
//	let original : ModelOriginal?
//	let originalMp4 : ModelDownsizedSmall?
//	let originalStill : ModelDownsized?
//	let preview : ModelDownsizedSmall?
//	let previewGif : ModelDownsized?
//	let previewWebp : ModelDownsized?


	enum CodingKeys: String, CodingKey {
//		case downsized
//		case downsizedLarge
//		case downsizedMedium
//		case downsizedSmall
//		case downsizedStill
//		case fixedHeight
//		case fixedHeightDownsampled
//		case fixedHeightSmall
//		case fixedHeightSmallStill
//		case fixedHeightStill
		case fixedWidth = "fixed_height"
//		case fixedWidthDownsampled
//		case fixedWidthSmall
//		case fixedWidthSmallStill
//		case fixedWidthStill
//		case hd
//		case looping
//		case original
//		case originalMp4
//		case originalStill
//		case preview
//		case previewGif
//		case previewWebp
	}
	required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
//		downsized = try values.decodeIfPresent(ModelDownsized.self, forKey: .downsized)  //?? ModelDownsized()
//		downsizedLarge = try values.decodeIfPresent(ModelDownsized.self, forKey: .downsizedLarge)  //?? ModelDownsized()
//		downsizedMedium = try values.decodeIfPresent(ModelDownsized.self, forKey: .downsizedMedium)  //?? ModelDownsized()
//		downsizedSmall = try values.decodeIfPresent(ModelDownsizedSmall.self, forKey: .downsizedSmall)  //?? ModelDownsizedSmall()
//		downsizedStill = try values.decodeIfPresent(ModelDownsized.self, forKey: .downsizedStill)  //?? ModelDownsized()
//		fixedHeight = try values.decodeIfPresent(ModelFixedHeight.self, forKey: .fixedHeight)  //?? ModelFixedHeight()
//		fixedHeightDownsampled = try values.decodeIfPresent(ModelFixedHeightDownsampled.self, forKey: .fixedHeightDownsampled)  //?? ModelFixedHeightDownsampled()
//		fixedHeightSmall = try values.decodeIfPresent(ModelFixedHeight.self, forKey: .fixedHeightSmall)  //?? ModelFixedHeight()
//		fixedHeightSmallStill = try values.decodeIfPresent(ModelDownsized.self, forKey: .fixedHeightSmallStill)  //?? ModelDownsized()
//		fixedHeightStill = try values.decodeIfPresent(ModelDownsized.self, forKey: .fixedHeightStill)  //?? ModelDownsized()
		fixedWidth = try values.decodeIfPresent(ModelFixedHeight.self, forKey: .fixedWidth)  //?? ModelFixedHeight()
//		fixedWidthDownsampled = try values.decodeIfPresent(ModelFixedHeightDownsampled.self, forKey: .fixedWidthDownsampled)  //?? ModelFixedHeightDownsampled()
//		fixedWidthSmall = try values.decodeIfPresent(ModelFixedHeight.self, forKey: .fixedWidthSmall)  //?? ModelFixedHeight()
//		fixedWidthSmallStill = try values.decodeIfPresent(ModelDownsized.self, forKey: .fixedWidthSmallStill)  //?? ModelDownsized()
//		fixedWidthStill = try values.decodeIfPresent(ModelDownsized.self, forKey: .fixedWidthStill)  //?? ModelDownsized()
//		hd = try values.decodeIfPresent(ModelDownsizedSmall.self, forKey: .hd)  //?? ModelDownsizedSmall()
//		looping = try values.decodeIfPresent(ModelLooping.self, forKey: .looping)  //?? ModelLooping()
//		original = try values.decodeIfPresent(ModelOriginal.self, forKey: .original)  //?? ModelOriginal()
//		originalMp4 = try values.decodeIfPresent(ModelDownsizedSmall.self, forKey: .originalMp4)  //?? ModelDownsizedSmall()
//		originalStill = try values.decodeIfPresent(ModelDownsized.self, forKey: .originalStill)  //?? ModelDownsized()
//		preview = try values.decodeIfPresent(ModelDownsizedSmall.self, forKey: .preview)  //?? ModelDownsizedSmall()
//		previewGif = try values.decodeIfPresent(ModelDownsized.self, forKey: .previewGif)  //?? ModelDownsized()
//		previewWebp = try values.decodeIfPresent(ModelDownsized.self, forKey: .previewWebp)  //?? ModelDownsized()
	}


}
