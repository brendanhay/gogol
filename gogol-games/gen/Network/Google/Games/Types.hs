{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Games.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Games.Types
    (
    -- * Service Configuration
      gamesService

    -- * OAuth Scopes
    , plusLoginScope
    , gamesScope
    , driveAppdataScope

    -- * PlayersListCollection
    , PlayersListCollection (..)

    -- * RoomJoinRequest
    , RoomJoinRequest
    , roomJoinRequest
    , rjrNetworkDiagnostics
    , rjrKind
    , rjrClientAddress
    , rjrCapabilities

    -- * PlayerName
    , PlayerName
    , playerName
    , pnGivenName
    , pnFamilyName

    -- * Snapshot
    , Snapshot
    , snapshot
    , sLastModifiedMillis
    , sKind
    , sProgressValue
    , sUniqueName
    , sCoverImage
    , sId
    , sDurationMillis
    , sTitle
    , sType
    , sDescription
    , sDriveId

    -- * Room
    , Room
    , room
    , rStatus
    , rVariant
    , rKind
    , rAutoMatchingStatus
    , rCreationDetails
    , rInviterId
    , rLastUpdateDetails
    , rRoomStatusVersion
    , rParticipants
    , rApplicationId
    , rAutoMatchingCriteria
    , rRoomId
    , rDescription

    -- * QuestListResponse
    , QuestListResponse
    , questListResponse
    , qlrNextPageToken
    , qlrKind
    , qlrItems

    -- * TurnBasedMatch
    , TurnBasedMatch
    , turnBasedMatch
    , tbmStatus
    , tbmVariant
    , tbmResults
    , tbmMatchNumber
    , tbmKind
    , tbmData
    , tbmWithParticipantId
    , tbmCreationDetails
    , tbmInviterId
    , tbmLastUpdateDetails
    , tbmParticipants
    , tbmApplicationId
    , tbmAutoMatchingCriteria
    , tbmPreviousMatchData
    , tbmPendingParticipantId
    , tbmUserMatchStatus
    , tbmMatchId
    , tbmDescription
    , tbmRematchId
    , tbmMatchVersion

    -- * TurnBasedMatchData
    , TurnBasedMatchData
    , turnBasedMatchData
    , tbmdKind
    , tbmdData
    , tbmdDataAvailable

    -- * ScoresListCollection
    , ScoresListCollection (..)

    -- * PlayerEvent
    , PlayerEvent
    , playerEvent
    , peKind
    , peNumEvents
    , peFormattedNumEvents
    , peDefinitionId
    , pePlayerId

    -- * PlayerLeaderboardScore
    , PlayerLeaderboardScore
    , playerLeaderboardScore
    , plsScoreTag
    , plsScoreString
    , plsKind
    , plsScoreValue
    , plsTimeSpan
    , plsPublicRank
    , plsSocialRank
    , plsLeaderboardId
    , plsWriteTimestamp

    -- * Application
    , Application
    , application
    , aThemeColor
    , aLeaderboardCount
    , aKind
    , aCategory
    , aName
    , aEnabledFeatures
    , aInstances
    , aAuthor
    , aId
    , aAchievementCount
    , aAssets
    , aDescription
    , aLastUpdatedTimestamp

    -- * ApplicationCategory
    , ApplicationCategory
    , applicationCategory
    , acSecondary
    , acKind
    , acPrimary

    -- * PlayerScoreListResponse
    , PlayerScoreListResponse
    , playerScoreListResponse
    , pslrSubmittedScores
    , pslrKind

    -- * NetworkDiagnostics
    , NetworkDiagnostics
    , networkDiagnostics
    , ndAndroidNetworkType
    , ndKind
    , ndNetworkOperatorCode
    , ndNetworkOperatorName
    , ndRegistrationLatencyMillis
    , ndIosNetworkType
    , ndAndroidNetworkSubtype

    -- * TurnBasedMatchTurn
    , TurnBasedMatchTurn
    , turnBasedMatchTurn
    , tbmtResults
    , tbmtKind
    , tbmtData
    , tbmtPendingParticipantId
    , tbmtMatchVersion

    -- * QuestCriterion
    , QuestCriterion
    , questCriterion
    , qcCurrentContribution
    , qcCompletionContribution
    , qcKind
    , qcInitialPlayerProgress
    , qcEventId

    -- * TurnBasedMatchList
    , TurnBasedMatchList
    , turnBasedMatchList
    , tbmlNextPageToken
    , tbmlKind
    , tbmlItems

    -- * PeerChannelDiagnostics
    , PeerChannelDiagnostics
    , peerChannelDiagnostics
    , pcdNumMessagesLost
    , pcdBytesSent
    , pcdKind
    , pcdRoundtripLatencyMillis
    , pcdBytesReceived
    , pcdNumMessagesReceived
    , pcdNumSendFailures
    , pcdNumMessagesSent

    -- * RoomList
    , RoomList
    , roomList
    , rlNextPageToken
    , rlKind
    , rlItems

    -- * PushToken
    , PushToken
    , pushToken
    , ptClientRevision
    , ptKind
    , ptLanguage
    , ptId

    -- * AchievementUpdateResponse
    , AchievementUpdateResponse
    , achievementUpdateResponse
    , aurUpdateOccurred
    , aurAchievementId
    , aurKind
    , aurCurrentState
    , aurNewlyUnlocked
    , aurCurrentSteps

    -- * LeaderboardEntry
    , LeaderboardEntry
    , leaderboardEntry
    , leScoreTag
    , leWriteTimestampMillis
    , leKind
    , leScoreValue
    , leFormattedScore
    , leTimeSpan
    , leFormattedScoreRank
    , lePlayer
    , leScoreRank

    -- * SnapshotListResponse
    , SnapshotListResponse
    , snapshotListResponse
    , slrNextPageToken
    , slrKind
    , slrItems

    -- * PlayerLevel
    , PlayerLevel
    , playerLevel
    , plMaxExperiencePoints
    , plKind
    , plMinExperiencePoints
    , plLevel

    -- * AchievementUpdateMultipleResponse
    , AchievementUpdateMultipleResponse
    , achievementUpdateMultipleResponse
    , aumrKind
    , aumrUpdatedAchievements

    -- * RoomParticipant
    , RoomParticipant
    , roomParticipant
    , rpStatus
    , rpConnected
    , rpLeaveReason
    , rpKind
    , rpClientAddress
    , rpId
    , rpAutoMatched
    , rpPlayer
    , rpCapabilities
    , rpAutoMatchedPlayer

    -- * ApplicationsGetPlatformType
    , ApplicationsGetPlatformType (..)

    -- * EventDefinitionListResponse
    , EventDefinitionListResponse
    , eventDefinitionListResponse
    , edlrNextPageToken
    , edlrKind
    , edlrItems

    -- * Category
    , Category
    , category
    , cKind
    , cCategory
    , cExperiencePoints

    -- * InstanceAndroidDetails
    , InstanceAndroidDetails
    , instanceAndroidDetails
    , iadPackageName
    , iadPreferred
    , iadKind
    , iadEnablePiracyCheck

    -- * TurnBasedMatchParticipant
    , TurnBasedMatchParticipant
    , turnBasedMatchParticipant
    , tbmpStatus
    , tbmpKind
    , tbmpId
    , tbmpAutoMatched
    , tbmpPlayer
    , tbmpAutoMatchedPlayer

    -- * AchievementDefinitionsListResponse
    , AchievementDefinitionsListResponse
    , achievementDefinitionsListResponse
    , adlrNextPageToken
    , adlrKind
    , adlrItems

    -- * PlayerScoreResponse
    , PlayerScoreResponse
    , playerScoreResponse
    , psrScoreTag
    , psrKind
    , psrFormattedScore
    , psrLeaderboardId
    , psrBeatenScoreTimeSpans
    , psrUnbeatenScores

    -- * AnonymousPlayer
    , AnonymousPlayer
    , anonymousPlayer
    , apAvatarImageURL
    , apKind
    , apDisplayName

    -- * QuestContribution
    , QuestContribution
    , questContribution
    , qKind
    , qValue
    , qFormattedValue

    -- * RoomClientAddress
    , RoomClientAddress
    , roomClientAddress
    , rcaKind
    , rcaXmppAddress

    -- * LeaderboardListResponse
    , LeaderboardListResponse
    , leaderboardListResponse
    , llrNextPageToken
    , llrKind
    , llrItems

    -- * PlayerScore
    , PlayerScore
    , playerScore
    , psScoreTag
    , psScore
    , psKind
    , psFormattedScore
    , psTimeSpan

    -- * ScoresListWindowCollection
    , ScoresListWindowCollection (..)

    -- * TurnBasedAutoMatchingCriteria
    , TurnBasedAutoMatchingCriteria
    , turnBasedAutoMatchingCriteria
    , tbamcKind
    , tbamcExclusiveBitmask
    , tbamcMaxAutoMatchingPlayers
    , tbamcMinAutoMatchingPlayers

    -- * SnapshotImage
    , SnapshotImage
    , snapshotImage
    , siHeight
    , siKind
    , siURL
    , siMimeType
    , siWidth

    -- * RoomStatus
    , RoomStatus
    , roomStatus
    , rsStatus
    , rsKind
    , rsAutoMatchingStatus
    , rsStatusVersion
    , rsParticipants
    , rsRoomId

    -- * PlayerLeaderboardScoreListResponse
    , PlayerLeaderboardScoreListResponse
    , playerLeaderboardScoreListResponse
    , plslrNextPageToken
    , plslrKind
    , plslrItems
    , plslrPlayer

    -- * InstanceIosDetails
    , InstanceIosDetails
    , instanceIosDetails
    , iidItunesAppId
    , iidPreferredForIPad
    , iidSupportIPhone
    , iidKind
    , iidSupportIPad
    , iidPreferredForIPhone
    , iidBundleIdentifier

    -- * EventUpdateResponse
    , EventUpdateResponse
    , eventUpdateResponse
    , eurPlayerEvents
    , eurBatchFailures
    , eurEventFailures
    , eurKind

    -- * RevisionCheckResponse
    , RevisionCheckResponse
    , revisionCheckResponse
    , rcrAPIVersion
    , rcrKind
    , rcrRevisionStatus

    -- * ParticipantResult
    , ParticipantResult
    , participantResult
    , prParticipantId
    , prKind
    , prResult
    , prPlacing

    -- * Leaderboard
    , Leaderboard
    , leaderboard
    , lKind
    , lIsIconURLDefault
    , lName
    , lId
    , lIconURL
    , lOrder

    -- * MetagameConfig
    , MetagameConfig
    , metagameConfig
    , mcKind
    , mcCurrentVersion
    , mcPlayerLevels

    -- * CategoryListResponse
    , CategoryListResponse
    , categoryListResponse
    , clrNextPageToken
    , clrKind
    , clrItems

    -- * RoomP2PStatus
    , RoomP2PStatus
    , roomP2PStatus
    , rppsStatus
    , rppsParticipantId
    , rppsKind
    , rppsError
    , rppsErrorReason
    , rppsConnectionSetupLatencyMillis
    , rppsUnreliableRoundtripLatencyMillis

    -- * TurnBasedMatchModification
    , TurnBasedMatchModification
    , turnBasedMatchModification
    , tbmmParticipantId
    , tbmmKind
    , tbmmModifiedTimestampMillis

    -- * EventDefinition
    , EventDefinition
    , eventDefinition
    , edIsDefaultImageURL
    , edKind
    , edVisibility
    , edImageURL
    , edDisplayName
    , edId
    , edChildEvents
    , edDescription

    -- * RoomModification
    , RoomModification
    , roomModification
    , rmParticipantId
    , rmKind
    , rmModifiedTimestampMillis

    -- * ScoresListWindowTimeSpan
    , ScoresListWindowTimeSpan (..)

    -- * EventUpdateRequest
    , EventUpdateRequest
    , eventUpdateRequest
    , eUpdateCount
    , eKind
    , eDefinitionId

    -- * AchievementUnlockResponse
    , AchievementUnlockResponse
    , achievementUnlockResponse
    , achKind
    , achNewlyUnlocked

    -- * ScoresGetTimeSpan
    , ScoresGetTimeSpan (..)

    -- * PlayerAchievement
    , PlayerAchievement
    , playerAchievement
    , paKind
    , paAchievementState
    , paFormattedCurrentStepsString
    , paExperiencePoints
    , paId
    , paCurrentSteps
    , paLastUpdatedTimestamp

    -- * RoomP2PStatuses
    , RoomP2PStatuses
    , roomP2PStatuses
    , rppssKind
    , rppssUpdates

    -- * ImageAsset
    , ImageAsset
    , imageAsset
    , iaHeight
    , iaKind
    , iaURL
    , iaWidth
    , iaName

    -- * AchievementUpdateMultipleRequest
    , AchievementUpdateMultipleRequest
    , achievementUpdateMultipleRequest
    , aumruKind
    , aumruUpdates

    -- * RoomAutoMatchStatus
    , RoomAutoMatchStatus
    , roomAutoMatchStatus
    , ramsKind
    , ramsWaitEstimateSeconds

    -- * AchievementUpdateRequest
    , AchievementUpdateRequest
    , achievementUpdateRequest
    , auruAchievementId
    , auruKind
    , auruUpdateType
    , auruSetStepsAtLeastPayload
    , auruIncrementPayload

    -- * ScoresGetIncludeRankType
    , ScoresGetIncludeRankType (..)

    -- * LeaderboardScoreRank
    , LeaderboardScoreRank
    , leaderboardScoreRank
    , lsrNumScores
    , lsrKind
    , lsrFormattedRank
    , lsrFormattedNumScores
    , lsrRank

    -- * RoomCreateRequest
    , RoomCreateRequest
    , roomCreateRequest
    , rooRequestId
    , rooVariant
    , rooNetworkDiagnostics
    , rooKind
    , rooInvitedPlayerIds
    , rooClientAddress
    , rooAutoMatchingCriteria
    , rooCapabilities

    -- * PlayerListResponse
    , PlayerListResponse
    , playerListResponse
    , plrNextPageToken
    , plrKind
    , plrItems

    -- * LeaderboardScores
    , LeaderboardScores
    , leaderboardScores
    , lsNextPageToken
    , lsNumScores
    , lsKind
    , lsPlayerScore
    , lsItems
    , lsPrevPageToken

    -- * AchievementDefinition
    , AchievementDefinition
    , achievementDefinition
    , adAchievementType
    , adFormattedTotalSteps
    , adRevealedIconURL
    , adKind
    , adExperiencePoints
    , adInitialState
    , adName
    , adId
    , adIsUnlockedIconURLDefault
    , adTotalSteps
    , adDescription
    , adIsRevealedIconURLDefault
    , adUnlockedIconURL

    -- * TurnBasedMatchCreateRequest
    , TurnBasedMatchCreateRequest
    , turnBasedMatchCreateRequest
    , tbmcrRequestId
    , tbmcrVariant
    , tbmcrKind
    , tbmcrInvitedPlayerIds
    , tbmcrAutoMatchingCriteria

    -- * EventBatchRecordFailure
    , EventBatchRecordFailure
    , eventBatchRecordFailure
    , ebrfKind
    , ebrfRange
    , ebrfFailureCause

    -- * TurnBasedMatchResults
    , TurnBasedMatchResults
    , turnBasedMatchResults
    , tbmrResults
    , tbmrKind
    , tbmrData
    , tbmrMatchVersion

    -- * PushTokenIdIos
    , PushTokenIdIos
    , pushTokenIdIos
    , ptiiAPNSDeviceToken
    , ptiiAPNSEnvironment

    -- * RoomLeaveRequest
    , RoomLeaveRequest
    , roomLeaveRequest
    , rlrKind
    , rlrReason
    , rlrLeaveDiagnostics

    -- * Played
    , Played
    , played
    , pKind
    , pAutoMatched
    , pTimeMillis

    -- * AchievementIncrementResponse
    , AchievementIncrementResponse
    , achievementIncrementResponse
    , airKind
    , airNewlyUnlocked
    , airCurrentSteps

    -- * AchievementRevealResponse
    , AchievementRevealResponse
    , achievementRevealResponse
    , arrKind
    , arrCurrentState

    -- * AchievementSetStepsAtLeastResponse
    , AchievementSetStepsAtLeastResponse
    , achievementSetStepsAtLeastResponse
    , assalrKind
    , assalrNewlyUnlocked
    , assalrCurrentSteps

    -- * PlayerAchievementListResponse
    , PlayerAchievementListResponse
    , playerAchievementListResponse
    , palrNextPageToken
    , palrKind
    , palrItems

    -- * EventRecordRequest
    , EventRecordRequest
    , eventRecordRequest
    , errRequestId
    , errKind
    , errCurrentTimeMillis
    , errTimePeriods

    -- * RoomAutoMatchingCriteria
    , RoomAutoMatchingCriteria
    , roomAutoMatchingCriteria
    , ramcKind
    , ramcExclusiveBitmask
    , ramcMaxAutoMatchingPlayers
    , ramcMinAutoMatchingPlayers

    -- * ScoresListTimeSpan
    , ScoresListTimeSpan (..)

    -- * QuestMilestone
    , QuestMilestone
    , questMilestone
    , qmState
    , qmKind
    , qmId
    , qmCompletionRewardData
    , qmCriteria

    -- * PeerSessionDiagnostics
    , PeerSessionDiagnostics
    , peerSessionDiagnostics
    , psdConnectedTimestampMillis
    , psdParticipantId
    , psdKind
    , psdUnreliableChannel
    , psdReliableChannel

    -- * PushTokenId
    , PushTokenId
    , pushTokenId
    , ptiIos
    , ptiKind

    -- * EventPeriodUpdate
    , EventPeriodUpdate
    , eventPeriodUpdate
    , epuKind
    , epuTimePeriod
    , epuUpdates

    -- * TurnBasedMatchSync
    , TurnBasedMatchSync
    , turnBasedMatchSync
    , tbmsMoreAvailable
    , tbmsNextPageToken
    , tbmsKind
    , tbmsItems

    -- * ScoreSubmission
    , ScoreSubmission
    , scoreSubmission
    , scoSignature
    , scoScoreTag
    , scoScore
    , scoKind
    , scoLeaderboardId

    -- * RoomLeaveDiagnostics
    , RoomLeaveDiagnostics
    , roomLeaveDiagnostics
    , rldPeerSession
    , rldAndroidNetworkType
    , rldKind
    , rldNetworkOperatorCode
    , rldNetworkOperatorName
    , rldSocketsUsed
    , rldIosNetworkType
    , rldAndroidNetworkSubtype

    -- * AggregateStats
    , AggregateStats
    , aggregateStats
    , asMax
    , asKind
    , asCount
    , asMin
    , asSum

    -- * InstanceWebDetails
    , InstanceWebDetails
    , instanceWebDetails
    , iwdPreferred
    , iwdKind
    , iwdLaunchURL

    -- * TurnBasedMatchRematch
    , TurnBasedMatchRematch
    , turnBasedMatchRematch
    , tRematch
    , tKind
    , tPreviousMatch

    -- * PlayerExperienceInfo
    , PlayerExperienceInfo
    , playerExperienceInfo
    , peiKind
    , peiCurrentExperiencePoints
    , peiCurrentLevel
    , peiNextLevel
    , peiLastLevelUpTimestampMillis

    -- * GamesAchievementSetStepsAtLeast
    , GamesAchievementSetStepsAtLeast
    , gamesAchievementSetStepsAtLeast
    , gassalKind
    , gassalSteps

    -- * Player
    , Player
    , player
    , plaBannerURLLandscape
    , plaLastPlayedWith
    , plaAvatarImageURL
    , plaKind
    , plaExperienceInfo
    , plaName
    , plaOriginalPlayerId
    , plaDisplayName
    , plaTitle
    , plaBannerURLPortrait
    , plaPlayerId

    -- * GamesAchievementIncrement
    , GamesAchievementIncrement
    , gamesAchievementIncrement
    , gaiRequestId
    , gaiKind
    , gaiSteps

    -- * Quest
    , Quest
    , quest
    , queLastUpdatedTimestampMillis
    , queBannerURL
    , queState
    , queMilestones
    , queKind
    , queApplicationId
    , queEndTimestampMillis
    , queName
    , queId
    , queIconURL
    , queStartTimestampMillis
    , queNotifyTimestampMillis
    , queDescription
    , queIsDefaultBannerURL
    , queIsDefaultIconURL
    , queAcceptedTimestampMillis

    -- * EventChild
    , EventChild
    , eventChild
    , ecKind
    , ecChildId

    -- * ApplicationVerifyResponse
    , ApplicationVerifyResponse
    , applicationVerifyResponse
    , avrKind
    , avrAlternatePlayerId
    , avrPlayerId

    -- * PlayerEventListResponse
    , PlayerEventListResponse
    , playerEventListResponse
    , pelrNextPageToken
    , pelrKind
    , pelrItems

    -- * TurnBasedMatchDataRequest
    , TurnBasedMatchDataRequest
    , turnBasedMatchDataRequest
    , tbmdrKind
    , tbmdrData

    -- * EventPeriodRange
    , EventPeriodRange
    , eventPeriodRange
    , eprKind
    , eprPeriodStartMillis
    , eprPeriodEndMillis

    -- * MetagameListCategoriesByPlayerCollection
    , MetagameListCategoriesByPlayerCollection (..)

    -- * AchievementsListState
    , AchievementsListState (..)

    -- * EventRecordFailure
    , EventRecordFailure
    , eventRecordFailure
    , erfKind
    , erfFailureCause
    , erfEventId

    -- * PlayerScoreSubmissionList
    , PlayerScoreSubmissionList
    , playerScoreSubmissionList
    , psslKind
    , psslScores

    -- * Instance
    , Instance
    , instance'
    , iAndroidInstance
    , iKind
    , iWebInstance
    , iIosInstance
    , iName
    , iAcquisitionURI
    , iPlatformType
    , iTurnBasedPlay
    , iRealtimePlay
    ) where

import           Network.Google.Games.Types.Product
import           Network.Google.Games.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Play Game Services API. This contains the host and root path used as a starting point for constructing service requests.
gamesService :: ServiceConfig
gamesService
  = defaultService (ServiceId "games:v1")
      "www.googleapis.com"

-- | Know the list of people in your circles, your age range, and language
plusLoginScope :: OAuthScope
plusLoginScope = "https://www.googleapis.com/auth/plus.login";

-- | Share your Google+ profile information and view and manage your game
-- activity
gamesScope :: OAuthScope
gamesScope = "https://www.googleapis.com/auth/games";

-- | View and manage its own configuration data in your Google Drive
driveAppdataScope :: OAuthScope
driveAppdataScope = "https://www.googleapis.com/auth/drive.appdata";
