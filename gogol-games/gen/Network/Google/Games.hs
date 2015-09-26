-- |
-- Module      : Network.Google.Games
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The API for Google Play Game Services.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference>
module Network.Google.Games
    (
    -- * API Definition
      Games



    -- * Types

    -- ** AchievementDefinition
    , AchievementDefinition
    , achievementDefinition
    , adAchievementType
    , adFormattedTotalSteps
    , adRevealedIconUrl
    , adKind
    , adExperiencePoints
    , adInitialState
    , adName
    , adId
    , adIsUnlockedIconUrlDefault
    , adTotalSteps
    , adDescription
    , adIsRevealedIconUrlDefault
    , adUnlockedIconUrl

    -- ** AchievementDefinitionsListResponse
    , AchievementDefinitionsListResponse
    , achievementDefinitionsListResponse
    , adlrNextPageToken
    , adlrKind
    , adlrItems

    -- ** AchievementIncrementResponse
    , AchievementIncrementResponse
    , achievementIncrementResponse
    , airKind
    , airNewlyUnlocked
    , airCurrentSteps

    -- ** AchievementRevealResponse
    , AchievementRevealResponse
    , achievementRevealResponse
    , arrKind
    , arrCurrentState

    -- ** AchievementSetStepsAtLeastResponse
    , AchievementSetStepsAtLeastResponse
    , achievementSetStepsAtLeastResponse
    , assalrKind
    , assalrNewlyUnlocked
    , assalrCurrentSteps

    -- ** AchievementUnlockResponse
    , AchievementUnlockResponse
    , achievementUnlockResponse
    , aurKind
    , aurNewlyUnlocked

    -- ** AchievementUpdateMultipleRequest
    , AchievementUpdateMultipleRequest
    , achievementUpdateMultipleRequest
    , aumrKind
    , aumrUpdates

    -- ** AchievementUpdateMultipleResponse
    , AchievementUpdateMultipleResponse
    , achievementUpdateMultipleResponse
    , aumruKind
    , aumruUpdatedAchievements

    -- ** AchievementUpdateRequest
    , AchievementUpdateRequest
    , achievementUpdateRequest
    , aAchievementId
    , aKind
    , aUpdateType
    , aSetStepsAtLeastPayload
    , aIncrementPayload

    -- ** AchievementUpdateResponse
    , AchievementUpdateResponse
    , achievementUpdateResponse
    , achUpdateOccurred
    , achAchievementId
    , achKind
    , achCurrentState
    , achNewlyUnlocked
    , achCurrentSteps

    -- ** AggregateStats
    , AggregateStats
    , aggregateStats
    , asMax
    , asKind
    , asCount
    , asMin
    , asSum

    -- ** AnonymousPlayer
    , AnonymousPlayer
    , anonymousPlayer
    , apAvatarImageUrl
    , apKind
    , apDisplayName

    -- ** Application
    , Application
    , application
    , appThemeColor
    , appLeaderboardCount
    , appKind
    , appCategory
    , appName
    , appEnabledFeatures
    , appInstances
    , appAuthor
    , appId
    , appAchievementCount
    , appAssets
    , appDescription
    , appLastUpdatedTimestamp

    -- ** ApplicationCategory
    , ApplicationCategory
    , applicationCategory
    , acSecondary
    , acKind
    , acPrimary

    -- ** Category
    , Category
    , category
    , cKind
    , cCategory
    , cExperiencePoints

    -- ** CategoryListResponse
    , CategoryListResponse
    , categoryListResponse
    , clrNextPageToken
    , clrKind
    , clrItems

    -- ** EventBatchRecordFailure
    , EventBatchRecordFailure
    , eventBatchRecordFailure
    , ebrfKind
    , ebrfRange
    , ebrfFailureCause

    -- ** EventChild
    , EventChild
    , eventChild
    , ecKind
    , ecChildId

    -- ** EventDefinition
    , EventDefinition
    , eventDefinition
    , edIsDefaultImageUrl
    , edKind
    , edVisibility
    , edImageUrl
    , edDisplayName
    , edId
    , edChildEvents
    , edDescription

    -- ** EventDefinitionListResponse
    , EventDefinitionListResponse
    , eventDefinitionListResponse
    , edlrNextPageToken
    , edlrKind
    , edlrItems

    -- ** EventPeriodRange
    , EventPeriodRange
    , eventPeriodRange
    , eprKind
    , eprPeriodStartMillis
    , eprPeriodEndMillis

    -- ** EventPeriodUpdate
    , EventPeriodUpdate
    , eventPeriodUpdate
    , epuKind
    , epuTimePeriod
    , epuUpdates

    -- ** EventRecordFailure
    , EventRecordFailure
    , eventRecordFailure
    , erfKind
    , erfFailureCause
    , erfEventId

    -- ** EventRecordRequest
    , EventRecordRequest
    , eventRecordRequest
    , errRequestId
    , errKind
    , errCurrentTimeMillis
    , errTimePeriods

    -- ** EventUpdateRequest
    , EventUpdateRequest
    , eventUpdateRequest
    , eurUpdateCount
    , eurKind
    , eurDefinitionId

    -- ** EventUpdateResponse
    , EventUpdateResponse
    , eventUpdateResponse
    , ePlayerEvents
    , eBatchFailures
    , eEventFailures
    , eKind

    -- ** GamesAchievementIncrement
    , GamesAchievementIncrement
    , gamesAchievementIncrement
    , gaiRequestId
    , gaiKind
    , gaiSteps

    -- ** GamesAchievementSetStepsAtLeast
    , GamesAchievementSetStepsAtLeast
    , gamesAchievementSetStepsAtLeast
    , gassalKind
    , gassalSteps

    -- ** ImageAsset
    , ImageAsset
    , imageAsset
    , iaHeight
    , iaKind
    , iaUrl
    , iaWidth
    , iaName

    -- ** Instance
    , Instance
    , instance'
    , iAndroidInstance
    , iKind
    , iWebInstance
    , iIosInstance
    , iName
    , iAcquisitionUri
    , iPlatformType
    , iTurnBasedPlay
    , iRealtimePlay

    -- ** InstanceAndroidDetails
    , InstanceAndroidDetails
    , instanceAndroidDetails
    , iadPackageName
    , iadPreferred
    , iadKind
    , iadEnablePiracyCheck

    -- ** InstanceIosDetails
    , InstanceIosDetails
    , instanceIosDetails
    , iidItunesAppId
    , iidPreferredForIpad
    , iidSupportIphone
    , iidKind
    , iidSupportIpad
    , iidPreferredForIphone
    , iidBundleIdentifier

    -- ** InstanceWebDetails
    , InstanceWebDetails
    , instanceWebDetails
    , iwdPreferred
    , iwdKind
    , iwdLaunchUrl

    -- ** Leaderboard
    , Leaderboard
    , leaderboard
    , lKind
    , lIsIconUrlDefault
    , lName
    , lId
    , lIconUrl
    , lOrder

    -- ** LeaderboardEntry
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

    -- ** LeaderboardListResponse
    , LeaderboardListResponse
    , leaderboardListResponse
    , llrNextPageToken
    , llrKind
    , llrItems

    -- ** LeaderboardScoreRank
    , LeaderboardScoreRank
    , leaderboardScoreRank
    , lsrNumScores
    , lsrKind
    , lsrFormattedRank
    , lsrFormattedNumScores
    , lsrRank

    -- ** LeaderboardScores
    , LeaderboardScores
    , leaderboardScores
    , lsNextPageToken
    , lsNumScores
    , lsKind
    , lsPlayerScore
    , lsItems
    , lsPrevPageToken

    -- ** MetagameConfig
    , MetagameConfig
    , metagameConfig
    , mcKind
    , mcCurrentVersion
    , mcPlayerLevels

    -- ** NetworkDiagnostics
    , NetworkDiagnostics
    , networkDiagnostics
    , ndAndroidNetworkType
    , ndKind
    , ndNetworkOperatorCode
    , ndNetworkOperatorName
    , ndRegistrationLatencyMillis
    , ndIosNetworkType
    , ndAndroidNetworkSubtype

    -- ** ParticipantResult
    , ParticipantResult
    , participantResult
    , prParticipantId
    , prKind
    , prResult
    , prPlacing

    -- ** PeerChannelDiagnostics
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

    -- ** PeerSessionDiagnostics
    , PeerSessionDiagnostics
    , peerSessionDiagnostics
    , psdConnectedTimestampMillis
    , psdParticipantId
    , psdKind
    , psdUnreliableChannel
    , psdReliableChannel

    -- ** Played
    , Played
    , played
    , pKind
    , pAutoMatched
    , pTimeMillis

    -- ** Player
    , Player
    , player
    , plaLastPlayedWith
    , plaAvatarImageUrl
    , plaKind
    , plaExperienceInfo
    , plaName
    , plaDisplayName
    , plaTitle
    , plaPlayerId

    -- ** PlayerAchievement
    , PlayerAchievement
    , playerAchievement
    , paKind
    , paAchievementState
    , paFormattedCurrentStepsString
    , paExperiencePoints
    , paId
    , paCurrentSteps
    , paLastUpdatedTimestamp

    -- ** PlayerAchievementListResponse
    , PlayerAchievementListResponse
    , playerAchievementListResponse
    , palrNextPageToken
    , palrKind
    , palrItems

    -- ** PlayerEvent
    , PlayerEvent
    , playerEvent
    , peKind
    , peNumEvents
    , peFormattedNumEvents
    , peDefinitionId
    , pePlayerId

    -- ** PlayerEventListResponse
    , PlayerEventListResponse
    , playerEventListResponse
    , pelrNextPageToken
    , pelrKind
    , pelrItems

    -- ** PlayerExperienceInfo
    , PlayerExperienceInfo
    , playerExperienceInfo
    , peiKind
    , peiCurrentExperiencePoints
    , peiCurrentLevel
    , peiNextLevel
    , peiLastLevelUpTimestampMillis

    -- ** PlayerLeaderboardScore
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

    -- ** PlayerLeaderboardScoreListResponse
    , PlayerLeaderboardScoreListResponse
    , playerLeaderboardScoreListResponse
    , plslrNextPageToken
    , plslrKind
    , plslrItems
    , plslrPlayer

    -- ** PlayerLevel
    , PlayerLevel
    , playerLevel
    , plMaxExperiencePoints
    , plKind
    , plMinExperiencePoints
    , plLevel

    -- ** PlayerListResponse
    , PlayerListResponse
    , playerListResponse
    , plrNextPageToken
    , plrKind
    , plrItems

    -- ** PlayerName
    , PlayerName
    , playerName
    , pnGivenName
    , pnFamilyName

    -- ** PlayerScore
    , PlayerScore
    , playerScore
    , psScoreTag
    , psScore
    , psKind
    , psFormattedScore
    , psTimeSpan

    -- ** PlayerScoreListResponse
    , PlayerScoreListResponse
    , playerScoreListResponse
    , pslrSubmittedScores
    , pslrKind

    -- ** PlayerScoreResponse
    , PlayerScoreResponse
    , playerScoreResponse
    , psrScoreTag
    , psrKind
    , psrFormattedScore
    , psrLeaderboardId
    , psrBeatenScoreTimeSpans
    , psrUnbeatenScores

    -- ** PlayerScoreSubmissionList
    , PlayerScoreSubmissionList
    , playerScoreSubmissionList
    , psslKind
    , psslScores

    -- ** PushToken
    , PushToken
    , pushToken
    , ptClientRevision
    , ptKind
    , ptLanguage
    , ptId

    -- ** PushTokenId
    , PushTokenId
    , pushTokenId
    , ptiIos
    , ptiKind

    -- ** PushTokenIdIos
    , PushTokenIdIos
    , pushTokenIdIos
    , ptiiApnsDeviceToken
    , ptiiApnsEnvironment

    -- ** Quest
    , Quest
    , quest
    , queLastUpdatedTimestampMillis
    , queBannerUrl
    , queState
    , queMilestones
    , queKind
    , queApplicationId
    , queEndTimestampMillis
    , queName
    , queId
    , queIconUrl
    , queStartTimestampMillis
    , queNotifyTimestampMillis
    , queDescription
    , queIsDefaultBannerUrl
    , queIsDefaultIconUrl
    , queAcceptedTimestampMillis

    -- ** QuestContribution
    , QuestContribution
    , questContribution
    , qKind
    , qValue
    , qFormattedValue

    -- ** QuestCriterion
    , QuestCriterion
    , questCriterion
    , qcCurrentContribution
    , qcCompletionContribution
    , qcKind
    , qcInitialPlayerProgress
    , qcEventId

    -- ** QuestListResponse
    , QuestListResponse
    , questListResponse
    , qlrNextPageToken
    , qlrKind
    , qlrItems

    -- ** QuestMilestone
    , QuestMilestone
    , questMilestone
    , qmState
    , qmKind
    , qmId
    , qmCompletionRewardData
    , qmCriteria

    -- ** RevisionCheckResponse
    , RevisionCheckResponse
    , revisionCheckResponse
    , rcrApiVersion
    , rcrKind
    , rcrRevisionStatus

    -- ** Room
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

    -- ** RoomAutoMatchStatus
    , RoomAutoMatchStatus
    , roomAutoMatchStatus
    , ramsKind
    , ramsWaitEstimateSeconds

    -- ** RoomAutoMatchingCriteria
    , RoomAutoMatchingCriteria
    , roomAutoMatchingCriteria
    , ramcKind
    , ramcExclusiveBitmask
    , ramcMaxAutoMatchingPlayers
    , ramcMinAutoMatchingPlayers

    -- ** RoomClientAddress
    , RoomClientAddress
    , roomClientAddress
    , rcaKind
    , rcaXmppAddress

    -- ** RoomCreateRequest
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

    -- ** RoomJoinRequest
    , RoomJoinRequest
    , roomJoinRequest
    , rjrNetworkDiagnostics
    , rjrKind
    , rjrClientAddress
    , rjrCapabilities

    -- ** RoomLeaveDiagnostics
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

    -- ** RoomLeaveRequest
    , RoomLeaveRequest
    , roomLeaveRequest
    , rlrKind
    , rlrReason
    , rlrLeaveDiagnostics

    -- ** RoomList
    , RoomList
    , roomList
    , rlNextPageToken
    , rlKind
    , rlItems

    -- ** RoomModification
    , RoomModification
    , roomModification
    , rmParticipantId
    , rmKind
    , rmModifiedTimestampMillis

    -- ** RoomP2PStatus
    , RoomP2PStatus
    , roomP2PStatus
    , rppssStatus
    , rppssParticipantId
    , rppssKind
    , rppssError
    , rppssErrorReason
    , rppssConnectionSetupLatencyMillis
    , rppssUnreliableRoundtripLatencyMillis

    -- ** RoomP2PStatuses
    , RoomP2PStatuses
    , roomP2PStatuses
    , rppsKind
    , rppsUpdates

    -- ** RoomParticipant
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

    -- ** RoomStatus
    , RoomStatus
    , roomStatus
    , rsStatus
    , rsKind
    , rsAutoMatchingStatus
    , rsStatusVersion
    , rsParticipants
    , rsRoomId

    -- ** ScoreSubmission
    , ScoreSubmission
    , scoreSubmission
    , ssSignature
    , ssScoreTag
    , ssScore
    , ssKind
    , ssLeaderboardId

    -- ** Snapshot
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

    -- ** SnapshotImage
    , SnapshotImage
    , snapshotImage
    , siHeight
    , siKind
    , siUrl
    , siMimeType
    , siWidth

    -- ** SnapshotListResponse
    , SnapshotListResponse
    , snapshotListResponse
    , slrNextPageToken
    , slrKind
    , slrItems

    -- ** TurnBasedAutoMatchingCriteria
    , TurnBasedAutoMatchingCriteria
    , turnBasedAutoMatchingCriteria
    , tbamcKind
    , tbamcExclusiveBitmask
    , tbamcMaxAutoMatchingPlayers
    , tbamcMinAutoMatchingPlayers

    -- ** TurnBasedMatch
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

    -- ** TurnBasedMatchCreateRequest
    , TurnBasedMatchCreateRequest
    , turnBasedMatchCreateRequest
    , tbmcrRequestId
    , tbmcrVariant
    , tbmcrKind
    , tbmcrInvitedPlayerIds
    , tbmcrAutoMatchingCriteria

    -- ** TurnBasedMatchData
    , TurnBasedMatchData
    , turnBasedMatchData
    , tbmdKind
    , tbmdData
    , tbmdDataAvailable

    -- ** TurnBasedMatchDataRequest
    , TurnBasedMatchDataRequest
    , turnBasedMatchDataRequest
    , tbmdrKind
    , tbmdrData

    -- ** TurnBasedMatchList
    , TurnBasedMatchList
    , turnBasedMatchList
    , tbmlNextPageToken
    , tbmlKind
    , tbmlItems

    -- ** TurnBasedMatchModification
    , TurnBasedMatchModification
    , turnBasedMatchModification
    , tbmmParticipantId
    , tbmmKind
    , tbmmModifiedTimestampMillis

    -- ** TurnBasedMatchParticipant
    , TurnBasedMatchParticipant
    , turnBasedMatchParticipant
    , tbmpStatus
    , tbmpKind
    , tbmpId
    , tbmpAutoMatched
    , tbmpPlayer
    , tbmpAutoMatchedPlayer

    -- ** TurnBasedMatchRematch
    , TurnBasedMatchRematch
    , turnBasedMatchRematch
    , tRematch
    , tKind
    , tPreviousMatch

    -- ** TurnBasedMatchResults
    , TurnBasedMatchResults
    , turnBasedMatchResults
    , tbmrResults
    , tbmrKind
    , tbmrData
    , tbmrMatchVersion

    -- ** TurnBasedMatchSync
    , TurnBasedMatchSync
    , turnBasedMatchSync
    , tbmsMoreAvailable
    , tbmsNextPageToken
    , tbmsKind
    , tbmsItems

    -- ** TurnBasedMatchTurn
    , TurnBasedMatchTurn
    , turnBasedMatchTurn
    , tbmtResults
    , tbmtKind
    , tbmtData
    , tbmtPendingParticipantId
    , tbmtMatchVersion
    ) where

import           Network.Google.Games.Types

{- $resources
TODO
-}

type Games = ()

games :: Proxy Games
games = Proxy




