{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.YouTube.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTube.Types.Sum where

import           Network.Google.Prelude

-- | The type of call-to-action, a message to the user indicating action that
-- can be taken.
data ActivityContentDetailsPromotedItemCtaType
    = ACDPICTUnspecified
      -- ^ @unspecified@
    | ACDPICTVisitAdvertiserSite
      -- ^ @visitAdvertiserSite@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivityContentDetailsPromotedItemCtaType

-- | The reason that the resource is recommended to the user.
data ActivityContentDetailsRecommendationReason
    = ACDRRUnspecified
      -- ^ @unspecified@
    | ACDRRVideoFavorited
      -- ^ @videoFavorited@
    | ACDRRVideoLiked
      -- ^ @videoLiked@
    | ACDRRVideoWatched
      -- ^ @videoWatched@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivityContentDetailsRecommendationReason

-- | The name of the social network.
data ActivityContentDetailsSocialType
    = ACDSTFacebook
      -- ^ @facebook@
    | ACDSTGooglePlus
      -- ^ @googlePlus@
    | ACDSTTwitter
      -- ^ @twitter@
    | ACDSTUnspecified
      -- ^ @unspecified@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivityContentDetailsSocialType

-- | The type of activity that the resource describes.
data ActivitySnippetType
    = ASTBulletin
      -- ^ @bulletin@
    | ASTChannelItem
      -- ^ @channelItem@
    | ASTComment
      -- ^ @comment@
    | ASTFavorite
      -- ^ @favorite@
    | ASTLike
      -- ^ @like@
    | ASTPlaylistItem
      -- ^ @playlistItem@
    | ASTPromotedItem
      -- ^ @promotedItem@
    | ASTRecommendation
      -- ^ @recommendation@
    | ASTSocial
      -- ^ @social@
    | ASTSubscription
      -- ^ @subscription@
    | ASTUpload
      -- ^ @upload@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivitySnippetType

-- | The type of audio track associated with the caption track.
data CaptionSnippetAudioTrackType
    = CSATTCommentary
      -- ^ @commentary@
    | CSATTDescriptive
      -- ^ @descriptive@
    | CSATTPrimary
      -- ^ @primary@
    | CSATTUnknown
      -- ^ @unknown@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CaptionSnippetAudioTrackType

-- | The reason that YouTube failed to process the caption track. This
-- property is only present if the state property\'s value is failed.
data CaptionSnippetFailureReason
    = CSFRProcessingFailed
      -- ^ @processingFailed@
    | CSFRUnknownFormat
      -- ^ @unknownFormat@
    | CSFRUnsupportedFormat
      -- ^ @unsupportedFormat@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CaptionSnippetFailureReason

-- | The caption track\'s status.
data CaptionSnippetStatus
    = CSSFailed
      -- ^ @failed@
    | CSSServing
      -- ^ @serving@
    | CSSSyncing
      -- ^ @syncing@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CaptionSnippetStatus

-- | The caption track\'s type.
data CaptionSnippetTrackKind
    = CSTKAsr
      -- ^ @ASR@
    | CSTKForced
      -- ^ @forced@
    | CSTKStandard
      -- ^ @standard@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CaptionSnippetTrackKind

-- | The method or protocol used to transmit the video stream.
data CdnSettingsIngestionType
    = CSITDash
      -- ^ @dash@
    | CSITRtmp
      -- ^ @rtmp@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CdnSettingsIngestionType

-- | Defines the context of the ping.
data ChannelConversionPingContext
    = CCPCCview
      -- ^ @cview@
    | CCPCSubscribe
      -- ^ @subscribe@
    | CCPCUnsubscribe
      -- ^ @unsubscribe@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelConversionPingContext

-- | The style of the channel section.
data ChannelSectionSnippetStyle
    = CSSSChannelsectionStyleUndefined
      -- ^ @channelsectionStyleUndefined@
    | CSSSHorizontalRow
      -- ^ @horizontalRow@
    | CSSSVerticalList
      -- ^ @verticalList@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelSectionSnippetStyle

-- | The type of the channel section.
data ChannelSectionSnippetType
    = CSSTAllPlaylists
      -- ^ @allPlaylists@
    | CSSTChannelsectionTypeUndefined
      -- ^ @channelsectionTypeUndefined@
    | CSSTCompletedEvents
      -- ^ @completedEvents@
    | CSSTLikedPlaylists
      -- ^ @likedPlaylists@
    | CSSTLikes
      -- ^ @likes@
    | CSSTLiveEvents
      -- ^ @liveEvents@
    | CSSTMultipleChannels
      -- ^ @multipleChannels@
    | CSSTMultiplePlaylists
      -- ^ @multiplePlaylists@
    | CSSTPopularUploads
      -- ^ @popularUploads@
    | CSSTPostedPlaylists
      -- ^ @postedPlaylists@
    | CSSTPostedVideos
      -- ^ @postedVideos@
    | CSSTRecentActivity
      -- ^ @recentActivity@
    | CSSTRecentPosts
      -- ^ @recentPosts@
    | CSSTRecentUploads
      -- ^ @recentUploads@
    | CSSTSinglePlaylist
      -- ^ @singlePlaylist@
    | CSSTSubscriptions
      -- ^ @subscriptions@
    | CSSTUpcomingEvents
      -- ^ @upcomingEvents@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelSectionSnippetType

-- | The long uploads status of this channel. See
data ChannelStatusLongUploadsStatus
    = CSLUSAllowed
      -- ^ @allowed@
    | CSLUSDisallowed
      -- ^ @disallowed@
    | CSLUSEligible
      -- ^ @eligible@
    | CSLUSLongUploadsUnspecified
      -- ^ @longUploadsUnspecified@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelStatusLongUploadsStatus

-- | Privacy status of the channel.
data ChannelStatusPrivacyStatus
    = CSPSPrivate
      -- ^ @private@
    | CSPSPublic
      -- ^ @public@
    | CSPSUnlisted
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelStatusPrivacyStatus

-- | The comment\'s moderation status. Will not be set if the comments were
-- requested through the id filter.
data CommentSnippetModerationStatus
    = CSMSHeldForReview
      -- ^ @heldForReview@
    | CSMSLikelySpam
      -- ^ @likelySpam@
    | CSMSPublished
      -- ^ @published@
    | CSMSRejected
      -- ^ @rejected@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentSnippetModerationStatus

-- | The rating the viewer has given to this comment. For the time being this
-- will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE.
-- This may change in the future.
data CommentSnippetViewerRating
    = CSVRDislike
      -- ^ @dislike@
    | CSVRLike
      -- ^ @like@
    | CSVRNone
      -- ^ @none@
    | CSVRUnspecified
      -- ^ @unspecified@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentSnippetViewerRating

-- | The video\'s Australian Classification Board (ACB) or Australian
-- Communications and Media Authority (ACMA) rating. ACMA ratings are used
-- to classify children\'s television programming.
data ContentRatingAcbRating
    = CRARAcbC
      -- ^ @acbC@
    | CRARAcbE
      -- ^ @acbE@
    | CRARAcbG
      -- ^ @acbG@
    | CRARAcbM
      -- ^ @acbM@
    | CRARAcbMa15plus
      -- ^ @acbMa15plus@
    | CRARAcbP
      -- ^ @acbP@
    | CRARAcbPg
      -- ^ @acbPg@
    | CRARAcbR18plus
      -- ^ @acbR18plus@
    | CRARAcbUnrated
      -- ^ @acbUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingAcbRating

-- | The video\'s rating from Italy\'s Autorità per le Garanzie nelle
-- Comunicazioni (AGCOM).
data ContentRatingAgcomRating
    = CRARAgcomT
      -- ^ @agcomT@
    | CRARAgcomUnrated
      -- ^ @agcomUnrated@
    | CRARAGCOMVM14
      -- ^ @agcomVm14@
    | CRARAGCOMVM18
      -- ^ @agcomVm18@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingAgcomRating

-- | The video\'s Anatel (Asociación Nacional de Televisión) rating for
-- Chilean television.
data ContentRatingAnatelRating
    = CRARAnatelA
      -- ^ @anatelA@
    | CRARAnatelF
      -- ^ @anatelF@
    | CRARAnatelI
      -- ^ @anatelI@
    | CRARANATELI10
      -- ^ @anatelI10@
    | CRARANATELI12
      -- ^ @anatelI12@
    | CRARANATELI7
      -- ^ @anatelI7@
    | CRARAnatelR
      -- ^ @anatelR@
    | CRARAnatelUnrated
      -- ^ @anatelUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingAnatelRating

-- | The video\'s British Board of Film Classification (BBFC) rating.
data ContentRatingBbfcRating
    = CRBRBBFC12
      -- ^ @bbfc12@
    | CRBRBbfc12a
      -- ^ @bbfc12a@
    | CRBRBBFC15
      -- ^ @bbfc15@
    | CRBRBBFC18
      -- ^ @bbfc18@
    | CRBRBbfcPg
      -- ^ @bbfcPg@
    | CRBRBBFCR18
      -- ^ @bbfcR18@
    | CRBRBbfcU
      -- ^ @bbfcU@
    | CRBRBbfcUnrated
      -- ^ @bbfcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingBbfcRating

-- | The video\'s rating from Thailand\'s Board of Film and Video Censors.
data ContentRatingBfvcRating
    = CRBRBFVC13
      -- ^ @bfvc13@
    | CRBRBFVC15
      -- ^ @bfvc15@
    | CRBRBFVC18
      -- ^ @bfvc18@
    | CRBRBFVC20
      -- ^ @bfvc20@
    | CRBRBfvcB
      -- ^ @bfvcB@
    | CRBRBfvcE
      -- ^ @bfvcE@
    | CRBRBfvcG
      -- ^ @bfvcG@
    | CRBRBfvcUnrated
      -- ^ @bfvcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingBfvcRating

-- | The video\'s rating from the Austrian Board of Media Classification
-- (Bundesministerium für Unterricht, Kunst und Kultur).
data ContentRatingBmukkRating
    = CRBRBMUKK10
      -- ^ @bmukk10@
    | CRBRBMUKK12
      -- ^ @bmukk12@
    | CRBRBMUKK14
      -- ^ @bmukk14@
    | CRBRBMUKK16
      -- ^ @bmukk16@
    | CRBRBMUKK6
      -- ^ @bmukk6@
    | CRBRBMUKK8
      -- ^ @bmukk8@
    | CRBRBmukkAa
      -- ^ @bmukkAa@
    | CRBRBmukkUnrated
      -- ^ @bmukkUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingBmukkRating

-- | Rating system for Canadian TV - Canadian TV Classification System The
-- video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian English-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
data ContentRatingCatvRating
    = CRCRCatv14plus
      -- ^ @catv14plus@
    | CRCRCatv18plus
      -- ^ @catv18plus@
    | CRCRCatvC
      -- ^ @catvC@
    | CRCRCATVC8
      -- ^ @catvC8@
    | CRCRCatvG
      -- ^ @catvG@
    | CRCRCatvPg
      -- ^ @catvPg@
    | CRCRCatvUnrated
      -- ^ @catvUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCatvRating

-- | The video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian French-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
data ContentRatingCatvfrRating
    = CRCRCatvfr13plus
      -- ^ @catvfr13plus@
    | CRCRCatvfr16plus
      -- ^ @catvfr16plus@
    | CRCRCatvfr18plus
      -- ^ @catvfr18plus@
    | CRCRCatvfr8plus
      -- ^ @catvfr8plus@
    | CRCRCatvfrG
      -- ^ @catvfrG@
    | CRCRCatvfrUnrated
      -- ^ @catvfrUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCatvfrRating

-- | The video\'s Central Board of Film Certification (CBFC - India) rating.
data ContentRatingCbfcRating
    = CRCRCbfcA
      -- ^ @cbfcA@
    | CRCRCbfcS
      -- ^ @cbfcS@
    | CRCRCbfcU
      -- ^ @cbfcU@
    | CRCRCbfcUA
      -- ^ @cbfcUA@
    | CRCRCbfcUnrated
      -- ^ @cbfcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCbfcRating

-- | The video\'s Consejo de Calificación Cinematográfica (Chile) rating.
data ContentRatingCccRating
    = CRCRCCC14
      -- ^ @ccc14@
    | CRCRCCC18
      -- ^ @ccc18@
    | CRCRCcc18s
      -- ^ @ccc18s@
    | CRCRCcc18v
      -- ^ @ccc18v@
    | CRCRCCC6
      -- ^ @ccc6@
    | CRCRCccTe
      -- ^ @cccTe@
    | CRCRCccUnrated
      -- ^ @cccUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCccRating

-- | The video\'s rating from Portugal\'s Comissão de Classificação de
-- Espect´culos.
data ContentRatingCceRating
    = CRCRCCEM12
      -- ^ @cceM12@
    | CRCRCCEM16
      -- ^ @cceM16@
    | CRCRCCEM18
      -- ^ @cceM18@
    | CRCRCCEM4
      -- ^ @cceM4@
    | CRCRCCEM6
      -- ^ @cceM6@
    | CRCRCceUnrated
      -- ^ @cceUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCceRating

-- | The video\'s rating in Switzerland.
data ContentRatingChfilmRating
    = CRCRCHFILM0
      -- ^ @chfilm0@
    | CRCRCHFILM12
      -- ^ @chfilm12@
    | CRCRCHFILM16
      -- ^ @chfilm16@
    | CRCRCHFILM18
      -- ^ @chfilm18@
    | CRCRCHFILM6
      -- ^ @chfilm6@
    | CRCRChfilmUnrated
      -- ^ @chfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingChfilmRating

-- | The video\'s Canadian Home Video Rating System (CHVRS) rating.
data ContentRatingChvrsRating
    = CRCRChvrs14a
      -- ^ @chvrs14a@
    | CRCRChvrs18a
      -- ^ @chvrs18a@
    | CRCRChvrsE
      -- ^ @chvrsE@
    | CRCRChvrsG
      -- ^ @chvrsG@
    | CRCRChvrsPg
      -- ^ @chvrsPg@
    | CRCRChvrsR
      -- ^ @chvrsR@
    | CRCRChvrsUnrated
      -- ^ @chvrsUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingChvrsRating

-- | The video\'s rating from the Commission de Contrôle des Films (Belgium).
data ContentRatingCicfRating
    = CRCRCicfE
      -- ^ @cicfE@
    | CRCRCicfKntEna
      -- ^ @cicfKntEna@
    | CRCRCicfKtEa
      -- ^ @cicfKtEa@
    | CRCRCicfUnrated
      -- ^ @cicfUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCicfRating

-- | The video\'s rating from Romania\'s CONSILIUL NATIONAL AL
-- AUDIOVIZUALULUI (CNA).
data ContentRatingCnaRating
    = CRCRCNA12
      -- ^ @cna12@
    | CRCRCNA15
      -- ^ @cna15@
    | CRCRCNA18
      -- ^ @cna18@
    | CRCRCna18plus
      -- ^ @cna18plus@
    | CRCRCnaAp
      -- ^ @cnaAp@
    | CRCRCnaUnrated
      -- ^ @cnaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCnaRating

-- | Rating system in France - Commission de classification cinematographique
data ContentRatingCncRating
    = CRCRCNC10
      -- ^ @cnc10@
    | CRCRCNC12
      -- ^ @cnc12@
    | CRCRCNC16
      -- ^ @cnc16@
    | CRCRCNC18
      -- ^ @cnc18@
    | CRCRCncE
      -- ^ @cncE@
    | CRCRCncT
      -- ^ @cncT@
    | CRCRCncUnrated
      -- ^ @cncUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCncRating

-- | The video\'s rating from France\'s Conseil supérieur de l?audiovisuel,
-- which rates broadcast content.
data ContentRatingCsaRating
    = CRCRCSA10
      -- ^ @csa10@
    | CRCRCSA12
      -- ^ @csa12@
    | CRCRCSA16
      -- ^ @csa16@
    | CRCRCSA18
      -- ^ @csa18@
    | CRCRCsaInterdiction
      -- ^ @csaInterdiction@
    | CRCRCsaT
      -- ^ @csaT@
    | CRCRCsaUnrated
      -- ^ @csaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCsaRating

-- | The video\'s rating from Luxembourg\'s Commission de surveillance de la
-- classification des films (CSCF).
data ContentRatingCscfRating
    = CRCRCSCF12
      -- ^ @cscf12@
    | CRCRCSCF16
      -- ^ @cscf16@
    | CRCRCSCF18
      -- ^ @cscf18@
    | CRCRCSCF6
      -- ^ @cscf6@
    | CRCRCSCF9
      -- ^ @cscf9@
    | CRCRCscfA
      -- ^ @cscfA@
    | CRCRCscfAl
      -- ^ @cscfAl@
    | CRCRCscfUnrated
      -- ^ @cscfUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCscfRating

-- | The video\'s rating in the Czech Republic.
data ContentRatingCzfilmRating
    = CRCRCZFILM12
      -- ^ @czfilm12@
    | CRCRCZFILM14
      -- ^ @czfilm14@
    | CRCRCZFILM18
      -- ^ @czfilm18@
    | CRCRCzfilmU
      -- ^ @czfilmU@
    | CRCRCzfilmUnrated
      -- ^ @czfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCzfilmRating

-- | The video\'s Departamento de Justiça, Classificação, Qualificação e
-- Títulos (DJCQT - Brazil) rating.
data ContentRatingDjctqRating
    = CRDRDJCTQ10
      -- ^ @djctq10@
    | CRDRDJCTQ12
      -- ^ @djctq12@
    | CRDRDJCTQ14
      -- ^ @djctq14@
    | CRDRDJCTQ16
      -- ^ @djctq16@
    | CRDRDJCTQ18
      -- ^ @djctq18@
    | CRDRDjctqL
      -- ^ @djctqL@
    | CRDRDjctqUnrated
      -- ^ @djctqUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingDjctqRating

-- | The video\'s rating in Estonia.
data ContentRatingEefilmRating
    = CREREEFILMK12
      -- ^ @eefilmK12@
    | CREREEFILMK14
      -- ^ @eefilmK14@
    | CREREEFILMK16
      -- ^ @eefilmK16@
    | CREREEFILMK6
      -- ^ @eefilmK6@
    | CREREefilmL
      -- ^ @eefilmL@
    | CREREEFILMMS12
      -- ^ @eefilmMs12@
    | CREREEFILMMS6
      -- ^ @eefilmMs6@
    | CREREefilmPere
      -- ^ @eefilmPere@
    | CREREefilmUnrated
      -- ^ @eefilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingEefilmRating

-- | The video\'s rating in Egypt.
data ContentRatingEgfilmRating
    = CREREGFILM18
      -- ^ @egfilm18@
    | CREREgfilmBn
      -- ^ @egfilmBn@
    | CREREgfilmGn
      -- ^ @egfilmGn@
    | CREREgfilmUnrated
      -- ^ @egfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingEgfilmRating

-- | The video\'s Eirin (映倫) rating. Eirin is the Japanese rating system.
data ContentRatingEirinRating
    = CREREirinG
      -- ^ @eirinG@
    | CREREIRINPG12
      -- ^ @eirinPg12@
    | CREREirinR15plus
      -- ^ @eirinR15plus@
    | CREREirinR18plus
      -- ^ @eirinR18plus@
    | CREREirinUnrated
      -- ^ @eirinUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingEirinRating

-- | The video\'s rating from Malaysia\'s Film Censorship Board.
data ContentRatingFcbmRating
    = CRFRFCBM18
      -- ^ @fcbm18@
    | CRFRFcbm18pa
      -- ^ @fcbm18pa@
    | CRFRFcbm18pl
      -- ^ @fcbm18pl@
    | CRFRFcbm18sg
      -- ^ @fcbm18sg@
    | CRFRFcbm18sx
      -- ^ @fcbm18sx@
    | CRFRFCBMP13
      -- ^ @fcbmP13@
    | CRFRFCBMPG13
      -- ^ @fcbmPg13@
    | CRFRFcbmU
      -- ^ @fcbmU@
    | CRFRFcbmUnrated
      -- ^ @fcbmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingFcbmRating

-- | The video\'s rating from Hong Kong\'s Office for Film, Newspaper and
-- Article Administration.
data ContentRatingFcoRating
    = CRFRFcoI
      -- ^ @fcoI@
    | CRFRFcoIi
      -- ^ @fcoIi@
    | CRFRFcoIia
      -- ^ @fcoIia@
    | CRFRFcoIib
      -- ^ @fcoIib@
    | CRFRFcoIii
      -- ^ @fcoIii@
    | CRFRFcoUnrated
      -- ^ @fcoUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingFcoRating

-- | This property has been deprecated. Use the
-- contentDetails.contentRating.cncRating instead.
data ContentRatingFmocRating
    = CRFRFMOC10
      -- ^ @fmoc10@
    | CRFRFMOC12
      -- ^ @fmoc12@
    | CRFRFMOC16
      -- ^ @fmoc16@
    | CRFRFMOC18
      -- ^ @fmoc18@
    | CRFRFmocE
      -- ^ @fmocE@
    | CRFRFmocU
      -- ^ @fmocU@
    | CRFRFmocUnrated
      -- ^ @fmocUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingFmocRating

-- | The video\'s rating from South Africa\'s Film and Publication Board.
data ContentRatingFpbRating
    = CRFRFpb1012Pg
      -- ^ @fpb1012Pg@
    | CRFRFPB13
      -- ^ @fpb13@
    | CRFRFPB16
      -- ^ @fpb16@
    | CRFRFPB18
      -- ^ @fpb18@
    | CRFRFpb79Pg
      -- ^ @fpb79Pg@
    | CRFRFpbA
      -- ^ @fpbA@
    | CRFRFpbPg
      -- ^ @fpbPg@
    | CRFRFpbUnrated
      -- ^ @fpbUnrated@
    | CRFRFPBX18
      -- ^ @fpbX18@
    | CRFRFpbXx
      -- ^ @fpbXx@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingFpbRating

-- | The video\'s Freiwillige Selbstkontrolle der Filmwirtschaft (FSK -
-- Germany) rating.
data ContentRatingFskRating
    = CRFRFSK0
      -- ^ @fsk0@
    | CRFRFSK12
      -- ^ @fsk12@
    | CRFRFSK16
      -- ^ @fsk16@
    | CRFRFSK18
      -- ^ @fsk18@
    | CRFRFSK6
      -- ^ @fsk6@
    | CRFRFskUnrated
      -- ^ @fskUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingFskRating

-- | The video\'s rating in Greece.
data ContentRatingGrfilmRating
    = CRGRGrfilmE
      -- ^ @grfilmE@
    | CRGRGrfilmK
      -- ^ @grfilmK@
    | CRGRGRFILMK13
      -- ^ @grfilmK13@
    | CRGRGRFILMK17
      -- ^ @grfilmK17@
    | CRGRGrfilmUnrated
      -- ^ @grfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingGrfilmRating

-- | The video\'s Instituto de la Cinematografía y de las Artes Audiovisuales
-- (ICAA - Spain) rating.
data ContentRatingIcaaRating
    = CRIRICAA12
      -- ^ @icaa12@
    | CRIRICAA13
      -- ^ @icaa13@
    | CRIRICAA16
      -- ^ @icaa16@
    | CRIRICAA18
      -- ^ @icaa18@
    | CRIRICAA7
      -- ^ @icaa7@
    | CRIRIcaaApta
      -- ^ @icaaApta@
    | CRIRIcaaUnrated
      -- ^ @icaaUnrated@
    | CRIRIcaaX
      -- ^ @icaaX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingIcaaRating

-- | The video\'s Irish Film Classification Office (IFCO - Ireland) rating.
-- See the IFCO website for more information.
data ContentRatingIfcoRating
    = CRIRIFCO12
      -- ^ @ifco12@
    | CRIRIfco12a
      -- ^ @ifco12a@
    | CRIRIFCO15
      -- ^ @ifco15@
    | CRIRIfco15a
      -- ^ @ifco15a@
    | CRIRIFCO16
      -- ^ @ifco16@
    | CRIRIFCO18
      -- ^ @ifco18@
    | CRIRIfcoG
      -- ^ @ifcoG@
    | CRIRIfcoPg
      -- ^ @ifcoPg@
    | CRIRIfcoUnrated
      -- ^ @ifcoUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingIfcoRating

-- | The video\'s rating in Israel.
data ContentRatingIlfilmRating
    = CRIRILFILM12
      -- ^ @ilfilm12@
    | CRIRILFILM16
      -- ^ @ilfilm16@
    | CRIRILFILM18
      -- ^ @ilfilm18@
    | CRIRIlfilmAa
      -- ^ @ilfilmAa@
    | CRIRIlfilmUnrated
      -- ^ @ilfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingIlfilmRating

-- | The video\'s INCAA (Instituto Nacional de Cine y Artes Audiovisuales -
-- Argentina) rating.
data ContentRatingIncaaRating
    = CRIRIncaaAtp
      -- ^ @incaaAtp@
    | CRIRIncaaC
      -- ^ @incaaC@
    | CRIRINCAASAM13
      -- ^ @incaaSam13@
    | CRIRINCAASAM16
      -- ^ @incaaSam16@
    | CRIRINCAASAM18
      -- ^ @incaaSam18@
    | CRIRIncaaUnrated
      -- ^ @incaaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingIncaaRating

data ContentRatingItemDjctqRatingReasons
    = CRIDRRDjctqCriminalActs
      -- ^ @djctqCriminalActs@
    | CRIDRRDjctqDrugs
      -- ^ @djctqDrugs@
    | CRIDRRDjctqExplicitSex
      -- ^ @djctqExplicitSex@
    | CRIDRRDjctqExtremeViolence
      -- ^ @djctqExtremeViolence@
    | CRIDRRDjctqIllegalDrugs
      -- ^ @djctqIllegalDrugs@
    | CRIDRRDjctqImpactingContent
      -- ^ @djctqImpactingContent@
    | CRIDRRDjctqInappropriateLanguage
      -- ^ @djctqInappropriateLanguage@
    | CRIDRRDjctqLegalDrugs
      -- ^ @djctqLegalDrugs@
    | CRIDRRDjctqNudity
      -- ^ @djctqNudity@
    | CRIDRRDjctqSex
      -- ^ @djctqSex@
    | CRIDRRDjctqSexualContent
      -- ^ @djctqSexualContent@
    | CRIDRRDjctqViolence
      -- ^ @djctqViolence@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingItemDjctqRatingReasons

-- | The video\'s rating from the Kenya Film Classification Board.
data ContentRatingKfcbRating
    = CRKRKfcb16plus
      -- ^ @kfcb16plus@
    | CRKRKfcbG
      -- ^ @kfcbG@
    | CRKRKfcbPg
      -- ^ @kfcbPg@
    | CRKRKfcbR
      -- ^ @kfcbR@
    | CRKRKfcbUnrated
      -- ^ @kfcbUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingKfcbRating

-- | voor de Classificatie van Audiovisuele Media (Netherlands).
data ContentRatingKijkwijzerRating
    = CRKRKIJKWIJZER12
      -- ^ @kijkwijzer12@
    | CRKRKIJKWIJZER16
      -- ^ @kijkwijzer16@
    | CRKRKIJKWIJZER18
      -- ^ @kijkwijzer18@
    | CRKRKIJKWIJZER6
      -- ^ @kijkwijzer6@
    | CRKRKIJKWIJZER9
      -- ^ @kijkwijzer9@
    | CRKRKijkwijzerAl
      -- ^ @kijkwijzerAl@
    | CRKRKijkwijzerUnrated
      -- ^ @kijkwijzerUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingKijkwijzerRating

-- | The video\'s Korea Media Rating Board (영상물등급위원회) rating. The
-- KMRB rates videos in South Korea.
data ContentRatingKmrbRating
    = CRKRKmrb12plus
      -- ^ @kmrb12plus@
    | CRKRKmrb15plus
      -- ^ @kmrb15plus@
    | CRKRKmrbAll
      -- ^ @kmrbAll@
    | CRKRKmrbR
      -- ^ @kmrbR@
    | CRKRKmrbTeenr
      -- ^ @kmrbTeenr@
    | CRKRKmrbUnrated
      -- ^ @kmrbUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingKmrbRating

-- | The video\'s rating from Indonesia\'s Lembaga Sensor Film.
data ContentRatingLsfRating
    = CRLRLSF13
      -- ^ @lsf13@
    | CRLRLSF17
      -- ^ @lsf17@
    | CRLRLSF21
      -- ^ @lsf21@
    | CRLRLsfA
      -- ^ @lsfA@
    | CRLRLsfBo
      -- ^ @lsfBo@
    | CRLRLsfD
      -- ^ @lsfD@
    | CRLRLsfR
      -- ^ @lsfR@
    | CRLRLsfSu
      -- ^ @lsfSu@
    | CRLRLsfUnrated
      -- ^ @lsfUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingLsfRating

-- | The video\'s rating from Malta\'s Film Age-Classification Board.
data ContentRatingMccaaRating
    = CRMRMCCAA12
      -- ^ @mccaa12@
    | CRMRMccaa12a
      -- ^ @mccaa12a@
    | CRMRMCCAA14
      -- ^ @mccaa14@
    | CRMRMCCAA15
      -- ^ @mccaa15@
    | CRMRMCCAA16
      -- ^ @mccaa16@
    | CRMRMCCAA18
      -- ^ @mccaa18@
    | CRMRMccaaPg
      -- ^ @mccaaPg@
    | CRMRMccaaU
      -- ^ @mccaaU@
    | CRMRMccaaUnrated
      -- ^ @mccaaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMccaaRating

-- | The video\'s rating from the Danish Film Institute\'s (Det Danske
-- Filminstitut) Media Council for Children and Young People.
data ContentRatingMccypRating
    = CRMRMCCYP11
      -- ^ @mccyp11@
    | CRMRMCCYP15
      -- ^ @mccyp15@
    | CRMRMCCYP7
      -- ^ @mccyp7@
    | CRMRMccypA
      -- ^ @mccypA@
    | CRMRMccypUnrated
      -- ^ @mccypUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMccypRating

-- | The video\'s rating from Singapore\'s Media Development Authority (MDA)
-- and, specifically, it\'s Board of Film Censors (BFC).
data ContentRatingMdaRating
    = CRMRMdaG
      -- ^ @mdaG@
    | CRMRMDAM18
      -- ^ @mdaM18@
    | CRMRMDANC16
      -- ^ @mdaNc16@
    | CRMRMdaPg
      -- ^ @mdaPg@
    | CRMRMDAPG13
      -- ^ @mdaPg13@
    | CRMRMDAR21
      -- ^ @mdaR21@
    | CRMRMdaUnrated
      -- ^ @mdaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMdaRating

-- | The video\'s rating from Medietilsynet, the Norwegian Media Authority.
data ContentRatingMedietilsynetRating
    = CRMRMEDIETILSYNET11
      -- ^ @medietilsynet11@
    | CRMRMEDIETILSYNET12
      -- ^ @medietilsynet12@
    | CRMRMEDIETILSYNET15
      -- ^ @medietilsynet15@
    | CRMRMEDIETILSYNET18
      -- ^ @medietilsynet18@
    | CRMRMEDIETILSYNET6
      -- ^ @medietilsynet6@
    | CRMRMEDIETILSYNET7
      -- ^ @medietilsynet7@
    | CRMRMEDIETILSYNET9
      -- ^ @medietilsynet9@
    | CRMRMedietilsynetA
      -- ^ @medietilsynetA@
    | CRMRMedietilsynetUnrated
      -- ^ @medietilsynetUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMedietilsynetRating

-- | The video\'s rating from Finland\'s Kansallinen Audiovisuaalinen
-- Instituutti (National Audiovisual Institute).
data ContentRatingMekuRating
    = CRMRMEKU12
      -- ^ @meku12@
    | CRMRMEKU16
      -- ^ @meku16@
    | CRMRMEKU18
      -- ^ @meku18@
    | CRMRMEKU7
      -- ^ @meku7@
    | CRMRMekuS
      -- ^ @mekuS@
    | CRMRMekuUnrated
      -- ^ @mekuUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMekuRating

-- | The video\'s rating from the Ministero dei Beni e delle Attività
-- Culturali e del Turismo (Italy).
data ContentRatingMibacRating
    = CRMRMibacT
      -- ^ @mibacT@
    | CRMRMibacUnrated
      -- ^ @mibacUnrated@
    | CRMRMibacVap
      -- ^ @mibacVap@
    | CRMRMIBACVM12
      -- ^ @mibacVm12@
    | CRMRMIBACVM14
      -- ^ @mibacVm14@
    | CRMRMIBACVM18
      -- ^ @mibacVm18@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMibacRating

-- | The video\'s Ministerio de Cultura (Colombia) rating.
data ContentRatingMocRating
    = CRMRMOC12
      -- ^ @moc12@
    | CRMRMOC15
      -- ^ @moc15@
    | CRMRMOC18
      -- ^ @moc18@
    | CRMRMOC7
      -- ^ @moc7@
    | CRMRMocBanned
      -- ^ @mocBanned@
    | CRMRMocE
      -- ^ @mocE@
    | CRMRMocT
      -- ^ @mocT@
    | CRMRMocUnrated
      -- ^ @mocUnrated@
    | CRMRMocX
      -- ^ @mocX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMocRating

-- | The video\'s rating from Taiwan\'s Ministry of Culture (文化部).
data ContentRatingMoctwRating
    = CRMRMoctwG
      -- ^ @moctwG@
    | CRMRMoctwP
      -- ^ @moctwP@
    | CRMRMoctwPg
      -- ^ @moctwPg@
    | CRMRMoctwR
      -- ^ @moctwR@
    | CRMRMoctwUnrated
      -- ^ @moctwUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMoctwRating

-- | The video\'s Motion Picture Association of America (MPAA) rating.
data ContentRatingMpaaRating
    = CRMRMpaaG
      -- ^ @mpaaG@
    | CRMRMPAANC17
      -- ^ @mpaaNc17@
    | CRMRMpaaPg
      -- ^ @mpaaPg@
    | CRMRMPAAPG13
      -- ^ @mpaaPg13@
    | CRMRMpaaR
      -- ^ @mpaaR@
    | CRMRMpaaUnrated
      -- ^ @mpaaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMpaaRating

-- | The video\'s rating from the Movie and Television Review and
-- Classification Board (Philippines).
data ContentRatingMtrcbRating
    = CRMRMtrcbG
      -- ^ @mtrcbG@
    | CRMRMtrcbPg
      -- ^ @mtrcbPg@
    | CRMRMTRCBR13
      -- ^ @mtrcbR13@
    | CRMRMTRCBR16
      -- ^ @mtrcbR16@
    | CRMRMTRCBR18
      -- ^ @mtrcbR18@
    | CRMRMtrcbUnrated
      -- ^ @mtrcbUnrated@
    | CRMRMtrcbX
      -- ^ @mtrcbX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMtrcbRating

-- | The video\'s rating from the Maldives National Bureau of Classification.
data ContentRatingNbcRating
    = CRNRNbc12plus
      -- ^ @nbc12plus@
    | CRNRNbc15plus
      -- ^ @nbc15plus@
    | CRNRNbc18plus
      -- ^ @nbc18plus@
    | CRNRNbc18plusr
      -- ^ @nbc18plusr@
    | CRNRNbcG
      -- ^ @nbcG@
    | CRNRNbcPg
      -- ^ @nbcPg@
    | CRNRNbcPu
      -- ^ @nbcPu@
    | CRNRNbcUnrated
      -- ^ @nbcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingNbcRating

-- | The video\'s rating in Poland.
data ContentRatingNbcplRating
    = CRNRNbcpl18plus
      -- ^ @nbcpl18plus@
    | CRNRNbcplI
      -- ^ @nbcplI@
    | CRNRNbcplIi
      -- ^ @nbcplIi@
    | CRNRNbcplIii
      -- ^ @nbcplIii@
    | CRNRNbcplIv
      -- ^ @nbcplIv@
    | CRNRNbcplUnrated
      -- ^ @nbcplUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingNbcplRating

-- | The video\'s rating from the Bulgarian National Film Center.
data ContentRatingNfrcRating
    = CRNRNfrcA
      -- ^ @nfrcA@
    | CRNRNfrcB
      -- ^ @nfrcB@
    | CRNRNfrcC
      -- ^ @nfrcC@
    | CRNRNfrcD
      -- ^ @nfrcD@
    | CRNRNfrcUnrated
      -- ^ @nfrcUnrated@
    | CRNRNfrcX
      -- ^ @nfrcX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingNfrcRating

-- | The video\'s rating from Nigeria\'s National Film and Video Censors
-- Board.
data ContentRatingNfvcbRating
    = CRNRNFVCB12
      -- ^ @nfvcb12@
    | CRNRNfvcb12a
      -- ^ @nfvcb12a@
    | CRNRNFVCB15
      -- ^ @nfvcb15@
    | CRNRNFVCB18
      -- ^ @nfvcb18@
    | CRNRNfvcbG
      -- ^ @nfvcbG@
    | CRNRNfvcbPg
      -- ^ @nfvcbPg@
    | CRNRNfvcbRe
      -- ^ @nfvcbRe@
    | CRNRNfvcbUnrated
      -- ^ @nfvcbUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingNfvcbRating

-- | The video\'s rating from the Nacionãlais Kino centrs (National Film
-- Centre of Latvia).
data ContentRatingNkclvRating
    = CRNRNkclv12plus
      -- ^ @nkclv12plus@
    | CRNRNkclv18plus
      -- ^ @nkclv18plus@
    | CRNRNkclv7plus
      -- ^ @nkclv7plus@
    | CRNRNkclvU
      -- ^ @nkclvU@
    | CRNRNkclvUnrated
      -- ^ @nkclvUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingNkclvRating

-- | The video\'s Office of Film and Literature Classification (OFLC - New
-- Zealand) rating.
data ContentRatingOflcRating
    = CROROflcG
      -- ^ @oflcG@
    | CROROflcM
      -- ^ @oflcM@
    | CROROflcPg
      -- ^ @oflcPg@
    | CROROFLCR13
      -- ^ @oflcR13@
    | CROROFLCR15
      -- ^ @oflcR15@
    | CROROFLCR16
      -- ^ @oflcR16@
    | CROROFLCR18
      -- ^ @oflcR18@
    | CROROFLCRP13
      -- ^ @oflcRp13@
    | CROROFLCRP16
      -- ^ @oflcRp16@
    | CROROflcUnrated
      -- ^ @oflcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingOflcRating

-- | The video\'s rating in Peru.
data ContentRatingPefilmRating
    = CRPRPEFILM14
      -- ^ @pefilm14@
    | CRPRPEFILM18
      -- ^ @pefilm18@
    | CRPRPefilmPg
      -- ^ @pefilmPg@
    | CRPRPefilmPt
      -- ^ @pefilmPt@
    | CRPRPefilmUnrated
      -- ^ @pefilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingPefilmRating

-- | The video\'s rating from the Hungarian Nemzeti Filmiroda, the Rating
-- Committee of the National Office of Film.
data ContentRatingRcnofRating
    = CRRRRcnofI
      -- ^ @rcnofI@
    | CRRRRcnofIi
      -- ^ @rcnofIi@
    | CRRRRcnofIii
      -- ^ @rcnofIii@
    | CRRRRcnofIv
      -- ^ @rcnofIv@
    | CRRRRcnofUnrated
      -- ^ @rcnofUnrated@
    | CRRRRcnofV
      -- ^ @rcnofV@
    | CRRRRcnofVi
      -- ^ @rcnofVi@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingRcnofRating

-- | The video\'s rating in Venezuela.
data ContentRatingResorteviolenciaRating
    = CRRRResorteviolenciaA
      -- ^ @resorteviolenciaA@
    | CRRRResorteviolenciaB
      -- ^ @resorteviolenciaB@
    | CRRRResorteviolenciaC
      -- ^ @resorteviolenciaC@
    | CRRRResorteviolenciaD
      -- ^ @resorteviolenciaD@
    | CRRRResorteviolenciaE
      -- ^ @resorteviolenciaE@
    | CRRRResorteviolenciaUnrated
      -- ^ @resorteviolenciaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingResorteviolenciaRating

-- | The video\'s General Directorate of Radio, Television and Cinematography
-- (Mexico) rating.
data ContentRatingRtcRating
    = CRRRRtcA
      -- ^ @rtcA@
    | CRRRRtcAa
      -- ^ @rtcAa@
    | CRRRRtcB
      -- ^ @rtcB@
    | CRRRRTCB15
      -- ^ @rtcB15@
    | CRRRRtcC
      -- ^ @rtcC@
    | CRRRRtcD
      -- ^ @rtcD@
    | CRRRRtcUnrated
      -- ^ @rtcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingRtcRating

-- | The video\'s rating from Ireland\'s Raidió Teilifís Éireann.
data ContentRatingRteRating
    = CRRRRteCh
      -- ^ @rteCh@
    | CRRRRteGa
      -- ^ @rteGa@
    | CRRRRteMa
      -- ^ @rteMa@
    | CRRRRtePs
      -- ^ @rtePs@
    | CRRRRteUnrated
      -- ^ @rteUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingRteRating

-- | The video\'s National Film Registry of the Russian Federation (MKRF -
-- Russia) rating.
data ContentRatingRussiaRating
    = CRRRRUSSIA0
      -- ^ @russia0@
    | CRRRRUSSIA12
      -- ^ @russia12@
    | CRRRRUSSIA16
      -- ^ @russia16@
    | CRRRRUSSIA18
      -- ^ @russia18@
    | CRRRRUSSIA6
      -- ^ @russia6@
    | CRRRRussiaUnrated
      -- ^ @russiaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingRussiaRating

-- | The video\'s rating in Slovakia.
data ContentRatingSkfilmRating
    = CRSRSkfilmG
      -- ^ @skfilmG@
    | CRSRSKFILMP2
      -- ^ @skfilmP2@
    | CRSRSKFILMP5
      -- ^ @skfilmP5@
    | CRSRSKFILMP8
      -- ^ @skfilmP8@
    | CRSRSkfilmUnrated
      -- ^ @skfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingSkfilmRating

-- | The video\'s rating in Iceland.
data ContentRatingSmaisRating
    = CRSRSMAIS12
      -- ^ @smais12@
    | CRSRSMAIS14
      -- ^ @smais14@
    | CRSRSMAIS16
      -- ^ @smais16@
    | CRSRSMAIS18
      -- ^ @smais18@
    | CRSRSMAIS7
      -- ^ @smais7@
    | CRSRSmaisL
      -- ^ @smaisL@
    | CRSRSmaisUnrated
      -- ^ @smaisUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingSmaisRating

-- | The video\'s rating from Statens medieråd (Sweden\'s National Media
-- Council).
data ContentRatingSmsaRating
    = CRSRSMSA11
      -- ^ @smsa11@
    | CRSRSMSA15
      -- ^ @smsa15@
    | CRSRSMSA7
      -- ^ @smsa7@
    | CRSRSmsaA
      -- ^ @smsaA@
    | CRSRSmsaUnrated
      -- ^ @smsaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingSmsaRating

-- | The video\'s TV Parental Guidelines (TVPG) rating.
data ContentRatingTvpgRating
    = CRTRPG14
      -- ^ @pg14@
    | CRTRTvpgG
      -- ^ @tvpgG@
    | CRTRTvpgMa
      -- ^ @tvpgMa@
    | CRTRTvpgPg
      -- ^ @tvpgPg@
    | CRTRTvpgUnrated
      -- ^ @tvpgUnrated@
    | CRTRTvpgY
      -- ^ @tvpgY@
    | CRTRTVPGY7
      -- ^ @tvpgY7@
    | CRTRTvpgY7Fv
      -- ^ @tvpgY7Fv@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingTvpgRating

-- | A rating that YouTube uses to identify age-restricted content.
data ContentRatingYtRating
    = CRYRYtAgeRestricted
      -- ^ @ytAgeRestricted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingYtRating

-- | Describes in which corner of the video the visual widget will appear.
data InvideoPositionCornerPosition
    = IPCPBottomLeft
      -- ^ @bottomLeft@
    | IPCPBottomRight
      -- ^ @bottomRight@
    | IPCPTopLeft
      -- ^ @topLeft@
    | IPCPTopRight
      -- ^ @topRight@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InvideoPositionCornerPosition

-- | Defines the position type.
data InvideoPositionType
    = IPTCorner
      -- ^ @corner@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InvideoPositionType

-- | Describes a timing type. If the value is offsetFromStart, then the
-- offsetMs field represents an offset from the start of the video. If the
-- value is offsetFromEnd, then the offsetMs field represents an offset
-- from the end of the video.
data InvideoTimingType
    = ITTOffsetFromEnd
      -- ^ @offsetFromEnd@
    | ITTOffsetFromStart
      -- ^ @offsetFromStart@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InvideoTimingType

-- | The broadcast\'s status. The status can be updated using the API\'s
-- liveBroadcasts.transition method.
data LiveBroadcastStatusLifeCycleStatus
    = LBSLCSAbandoned
      -- ^ @abandoned@
    | LBSLCSComplete
      -- ^ @complete@
    | LBSLCSCompleteStarting
      -- ^ @completeStarting@
    | LBSLCSCreated
      -- ^ @created@
    | LBSLCSLive
      -- ^ @live@
    | LBSLCSLiveStarting
      -- ^ @liveStarting@
    | LBSLCSReady
      -- ^ @ready@
    | LBSLCSReclaimed
      -- ^ @reclaimed@
    | LBSLCSRevoked
      -- ^ @revoked@
    | LBSLCSTestStarting
      -- ^ @testStarting@
    | LBSLCSTesting
      -- ^ @testing@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastStatusLifeCycleStatus

-- | Priority of the live broadcast event (internal state).
data LiveBroadcastStatusLiveBroadcastPriority
    = LBSLBPHigh
      -- ^ @high@
    | LBSLBPLow
      -- ^ @low@
    | LBSLBPNormal
      -- ^ @normal@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastStatusLiveBroadcastPriority

-- | The broadcast\'s privacy status. Note that the broadcast represents
-- exactly one YouTube video, so the privacy settings are identical to
-- those supported for videos. In addition, you can set this field by
-- modifying the broadcast resource or by setting the privacyStatus field
-- of the corresponding video resource.
data LiveBroadcastStatusPrivacyStatus
    = LBSPSPrivate
      -- ^ @private@
    | LBSPSPublic
      -- ^ @public@
    | LBSPSUnlisted
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastStatusPrivacyStatus

-- | The broadcast\'s recording status.
data LiveBroadcastStatusRecordingStatus
    = LBSRSNotRecording
      -- ^ @notRecording@
    | LBSRSRecorded
      -- ^ @recorded@
    | LBSRSRecording
      -- ^ @recording@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastStatusRecordingStatus

-- | The type of the topic.
data LiveBroadcastTopicType
    = LBTTVideoGame
      -- ^ @videoGame@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastTopicType

-- | How severe this issue is to the stream.
data LiveStreamConfigurationIssueSeverity
    = LSCISError
      -- ^ @error@
    | LSCISInfo
      -- ^ @info@
    | LSCISWarning
      -- ^ @warning@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveStreamConfigurationIssueSeverity

-- | The kind of error happening.
data LiveStreamConfigurationIssueType
    = LSCITAudioBitrateHigh
      -- ^ @audioBitrateHigh@
    | LSCITAudioBitrateLow
      -- ^ @audioBitrateLow@
    | LSCITAudioBitrateMismatch
      -- ^ @audioBitrateMismatch@
    | LSCITAudioCodec
      -- ^ @audioCodec@
    | LSCITAudioCodecMismatch
      -- ^ @audioCodecMismatch@
    | LSCITAudioSampleRate
      -- ^ @audioSampleRate@
    | LSCITAudioSampleRateMismatch
      -- ^ @audioSampleRateMismatch@
    | LSCITAudioStereoMismatch
      -- ^ @audioStereoMismatch@
    | LSCITAudioTooManyChannels
      -- ^ @audioTooManyChannels@
    | LSCITBadContainer
      -- ^ @badContainer@
    | LSCITBitrateHigh
      -- ^ @bitrateHigh@
    | LSCITBitrateLow
      -- ^ @bitrateLow@
    | LSCITFrameRateHigh
      -- ^ @frameRateHigh@
    | LSCITFramerateMismatch
      -- ^ @framerateMismatch@
    | LSCITGopMismatch
      -- ^ @gopMismatch@
    | LSCITGopSizeLong
      -- ^ @gopSizeLong@
    | LSCITGopSizeOver
      -- ^ @gopSizeOver@
    | LSCITGopSizeShort
      -- ^ @gopSizeShort@
    | LSCITInterlacedVideo
      -- ^ @interlacedVideo@
    | LSCITMultipleAudioStreams
      -- ^ @multipleAudioStreams@
    | LSCITMultipleVideoStreams
      -- ^ @multipleVideoStreams@
    | LSCITNoAudioStream
      -- ^ @noAudioStream@
    | LSCITNoVideoStream
      -- ^ @noVideoStream@
    | LSCITOpenGop
      -- ^ @openGop@
    | LSCITResolutionMismatch
      -- ^ @resolutionMismatch@
    | LSCITVideoBitrateMismatch
      -- ^ @videoBitrateMismatch@
    | LSCITVideoCodec
      -- ^ @videoCodec@
    | LSCITVideoCodecMismatch
      -- ^ @videoCodecMismatch@
    | LSCITVideoIngestionStarved
      -- ^ @videoIngestionStarved@
    | LSCITVideoInterlaceMismatch
      -- ^ @videoInterlaceMismatch@
    | LSCITVideoProfileMismatch
      -- ^ @videoProfileMismatch@
    | LSCITVideoResolutionSuboptimal
      -- ^ @videoResolutionSuboptimal@
    | LSCITVideoResolutionUnsupported
      -- ^ @videoResolutionUnsupported@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveStreamConfigurationIssueType

-- | The status code of this stream
data LiveStreamHealthStatusStatus
    = LSHSSBad
      -- ^ @bad@
    | LSHSSGood
      -- ^ @good@
    | LSHSSNoData
      -- ^ @noData@
    | LSHSSOK
      -- ^ @ok@
    | LSHSSRevoked
      -- ^ @revoked@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveStreamHealthStatusStatus

data LiveStreamStatusStreamStatus
    = LSSSSActive
      -- ^ @active@
    | LSSSSCreated
      -- ^ @created@
    | LSSSSError
      -- ^ @error@
    | LSSSSInactive
      -- ^ @inactive@
    | LSSSSReady
      -- ^ @ready@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveStreamStatusStreamStatus

-- | This resource\'s privacy status.
data PlaylistItemStatusPrivacyStatus
    = PISPSPrivate
      -- ^ @private@
    | PISPSPublic
      -- ^ @public@
    | PISPSUnlisted
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlaylistItemStatusPrivacyStatus

-- | The playlist\'s privacy status.
data PlaylistStatusPrivacyStatus
    = PSPSPrivate
      -- ^ @private@
    | PSPSPublic
      -- ^ @public@
    | PSPSUnlisted
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlaylistStatusPrivacyStatus

-- | Describes the type of the promoted item.
data PromotedItemIdType
    = PIITRecentUpload
      -- ^ @recentUpload@
    | PIITVideo
      -- ^ @video@
    | PIITWebsite
      -- ^ @website@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PromotedItemIdType

-- | It indicates if the resource (video or channel) has upcoming\/active
-- live broadcast content. Or it\'s \"none\" if there is not any
-- upcoming\/active live broadcasts.
data SearchResultSnippetLiveBroadcastContent
    = SRSLBCLive
      -- ^ @live@
    | SRSLBCNone
      -- ^ @none@
    | SRSLBCUpcoming
      -- ^ @upcoming@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchResultSnippetLiveBroadcastContent

-- | The type of activity this subscription is for (only uploads,
-- everything).
data SubscriptionContentDetailsActivityType
    = SCDATAll
      -- ^ @all@
    | SCDATUploads
      -- ^ @uploads@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SubscriptionContentDetailsActivityType

-- | Video game rating, if any.
data VideoAgeGatingVideoGameRating
    = VAGVGRAnyone
      -- ^ @anyone@
    | VAGVGRM15Plus
      -- ^ @m15Plus@
    | VAGVGRM16Plus
      -- ^ @m16Plus@
    | VAGVGRM17Plus
      -- ^ @m17Plus@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoAgeGatingVideoGameRating

-- | The value of captions indicates whether the video has captions or not.
data VideoContentDetailsCaption
    = VCDCFalse
      -- ^ @false@
    | VCDCTrue
      -- ^ @true@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoContentDetailsCaption

-- | The value of definition indicates whether the video is available in high
-- definition or only in standard definition.
data VideoContentDetailsDefinition
    = VCDDHD
      -- ^ @hd@
    | VCDDSD
      -- ^ @sd@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoContentDetailsDefinition

-- | Defines the context of the ping.
data VideoConversionPingContext
    = VCPCComment
      -- ^ @comment@
    | VCPCDislike
      -- ^ @dislike@
    | VCPCLike
      -- ^ @like@
    | VCPCShare
      -- ^ @share@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoConversionPingContext

-- | The uploaded file\'s type as detected by YouTube\'s video processing
-- engine. Currently, YouTube only processes video files, but this field is
-- present whether a video file or another type of file was uploaded.
data VideoFileDetailsFileType
    = VFDFTArchive
      -- ^ @archive@
    | VFDFTAudio
      -- ^ @audio@
    | VFDFTDocument
      -- ^ @document@
    | VFDFTImage
      -- ^ @image@
    | VFDFTOther
      -- ^ @other@
    | VFDFTProject
      -- ^ @project@
    | VFDFTVideo
      -- ^ @video@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoFileDetailsFileType

-- | The amount that YouTube needs to rotate the original source content to
-- properly display the video.
data VideoFileDetailsVideoStreamRotation
    = VFDVSRClockwise
      -- ^ @clockwise@
    | VFDVSRCounterClockwise
      -- ^ @counterClockwise@
    | VFDVSRNone
      -- ^ @none@
    | VFDVSROther
      -- ^ @other@
    | VFDVSRUpsideDown
      -- ^ @upsideDown@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoFileDetailsVideoStreamRotation

-- | The reason that YouTube failed to process the video. This property will
-- only have a value if the processingStatus property\'s value is failed.
data VideoProcessingDetailsProcessingFailureReason
    = VPDPFROther
      -- ^ @other@
    | VPDPFRStreamingFailed
      -- ^ @streamingFailed@
    | VPDPFRTranscodeFailed
      -- ^ @transcodeFailed@
    | VPDPFRUploadFailed
      -- ^ @uploadFailed@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoProcessingDetailsProcessingFailureReason

-- | The video\'s processing status. This value indicates whether YouTube was
-- able to process the video or if the video is still being processed.
data VideoProcessingDetailsProcessingStatus
    = VPDPSFailed
      -- ^ @failed@
    | VPDPSProcessing
      -- ^ @processing@
    | VPDPSSucceeded
      -- ^ @succeeded@
    | VPDPSTerminated
      -- ^ @terminated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoProcessingDetailsProcessingStatus

data VideoRatingRating
    = VRRDislike
      -- ^ @dislike@
    | VRRLike
      -- ^ @like@
    | VRRNone
      -- ^ @none@
    | VRRUnspecified
      -- ^ @unspecified@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoRatingRating

-- | Indicates if the video is an upcoming\/active live broadcast. Or it\'s
-- \"none\" if the video is not an upcoming\/active live broadcast.
data VideoSnippetLiveBroadcastContent
    = VSLBCLive
      -- ^ @live@
    | VSLBCNone
      -- ^ @none@
    | VSLBCUpcoming
      -- ^ @upcoming@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSnippetLiveBroadcastContent

-- | This value explains why a video failed to upload. This property is only
-- present if the uploadStatus property indicates that the upload failed.
data VideoStatusFailureReason
    = VSFRCodec
      -- ^ @codec@
    | VSFRConversion
      -- ^ @conversion@
    | VSFREmptyFile
      -- ^ @emptyFile@
    | VSFRInvalidFile
      -- ^ @invalidFile@
    | VSFRTooSmall
      -- ^ @tooSmall@
    | VSFRUploadAborted
      -- ^ @uploadAborted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusFailureReason

-- | The video\'s license.
data VideoStatusLicense
    = VSLCreativeCommon
      -- ^ @creativeCommon@
    | VSLYoutube
      -- ^ @youtube@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusLicense

-- | The video\'s privacy status.
data VideoStatusPrivacyStatus
    = VSPSPrivate
      -- ^ @private@
    | VSPSPublic
      -- ^ @public@
    | VSPSUnlisted
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusPrivacyStatus

-- | This value explains why YouTube rejected an uploaded video. This
-- property is only present if the uploadStatus property indicates that the
-- upload was rejected.
data VideoStatusRejectionReason
    = VSRRClaim
      -- ^ @claim@
    | VSRRCopyright
      -- ^ @copyright@
    | VSRRDuplicate
      -- ^ @duplicate@
    | VSRRInappropriate
      -- ^ @inappropriate@
    | VSRRLength
      -- ^ @length@
    | VSRRTermsOfUse
      -- ^ @termsOfUse@
    | VSRRTrademark
      -- ^ @trademark@
    | VSRRUploaderAccountClosed
      -- ^ @uploaderAccountClosed@
    | VSRRUploaderAccountSuspended
      -- ^ @uploaderAccountSuspended@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusRejectionReason

-- | The status of the uploaded video.
data VideoStatusUploadStatus
    = VSUSDeleted
      -- ^ @deleted@
    | VSUSFailed
      -- ^ @failed@
    | VSUSProcessed
      -- ^ @processed@
    | VSUSRejected
      -- ^ @rejected@
    | VSUSUploaded
      -- ^ @uploaded@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusUploadStatus

data VideoSuggestionsItemEditorSuggestions
    = VSIESAudioQuietAudioSwap
      -- ^ @audioQuietAudioSwap@
    | VSIESVideoAutoLevels
      -- ^ @videoAutoLevels@
    | VSIESVideoCrop
      -- ^ @videoCrop@
    | VSIESVideoStabilize
      -- ^ @videoStabilize@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSuggestionsItemEditorSuggestions

data VideoSuggestionsItemProcessingErrors
    = VSIPEArchiveFile
      -- ^ @archiveFile@
    | VSIPEAudioFile
      -- ^ @audioFile@
    | VSIPEDocFile
      -- ^ @docFile@
    | VSIPEImageFile
      -- ^ @imageFile@
    | VSIPENotAVideoFile
      -- ^ @notAVideoFile@
    | VSIPEProjectFile
      -- ^ @projectFile@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSuggestionsItemProcessingErrors

data VideoSuggestionsItemProcessingHints
    = VSIPHNonStreamableMov
      -- ^ @nonStreamableMov@
    | VSIPHSendBestQualityVideo
      -- ^ @sendBestQualityVideo@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSuggestionsItemProcessingHints

data VideoSuggestionsItemProcessingWarnings
    = VSIPWHasEditlist
      -- ^ @hasEditlist@
    | VSIPWInconsistentResolution
      -- ^ @inconsistentResolution@
    | VSIPWProblematicAudioCodec
      -- ^ @problematicAudioCodec@
    | VSIPWProblematicVideoCodec
      -- ^ @problematicVideoCodec@
    | VSIPWUnknownAudioCodec
      -- ^ @unknownAudioCodec@
    | VSIPWUnknownContainer
      -- ^ @unknownContainer@
    | VSIPWUnknownVideoCodec
      -- ^ @unknownVideoCodec@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSuggestionsItemProcessingWarnings
