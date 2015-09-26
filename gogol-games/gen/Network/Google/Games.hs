{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Games
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The API for Google Play Game Services.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference>
module Network.Google.Games
    (
    -- * Resources
      Games
    , RoomsAPI
    , RoomsList
    , RoomsJoin
    , RoomsGet
    , RoomsCreate
    , RoomsDecline
    , RoomsDismiss
    , RoomsReportStatus
    , RoomsLeave
    , LeaderboardsAPI
    , LeaderboardsList
    , LeaderboardsGet
    , QuestMilestonesAPI
    , QuestMilestonesClaim
    , MetagameAPI
    , MetagameListCategoriesByPlayer
    , MetagameGetMetagameConfig
    , AchievementDefinitionsAPI
    , AchievementDefinitionsList
    , AchievementsAPI
    , AchievementsList
    , AchievementsUnlock
    , AchievementsReveal
    , AchievementsSetStepsAtLeast
    , AchievementsUpdateMultiple
    , AchievementsIncrement
    , SnapshotsAPI
    , SnapshotsList
    , SnapshotsGet
    , EventsAPI
    , EventsListDefinitions
    , EventsListByPlayer
    , EventsRecord
    , QuestsAPI
    , QuestsList
    , QuestsAccept
    , PlayersAPI
    , PlayersList
    , PlayersGet
    , RevisionsAPI
    , RevisionsCheck
    , ScoresAPI
    , ScoresList
    , ScoresGet
    , ScoresSubmit
    , ScoresSubmitMultiple
    , ScoresListWindow
    , PushtokensAPI
    , PushtokensRemove
    , PushtokensUpdate
    , TurnBasedMatchesAPI
    , TurnBasedMatchesRematch
    , TurnBasedMatchesList
    , TurnBasedMatchesJoin
    , TurnBasedMatchesFinish
    , TurnBasedMatchesTakeTurn
    , TurnBasedMatchesLeaveTurn
    , TurnBasedMatchesGet
    , TurnBasedMatchesCreate
    , TurnBasedMatchesDecline
    , TurnBasedMatchesSync
    , TurnBasedMatchesDismiss
    , TurnBasedMatchesLeave
    , TurnBasedMatchesCancel
    , ApplicationsAPI
    , ApplicationsGet
    , ApplicationsPlayed

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

type Games =
     LeaderboardsAPI :<|>
       QuestMilestonesAPI :<|>
         MetagameAPI :<|>
           AchievementDefinitionsAPI :<|>
             AchievementsAPI :<|>
               SnapshotsAPI :<|>
                 EventsAPI :<|>
                   QuestsAPI :<|>
                     PlayersAPI :<|>
                       RevisionsAPI :<|>
                         ScoresAPI :<|>
                           PushtokensAPI :<|>
                             TurnBasedMatchesAPI :<|>
                               ApplicationsAPI :<|> RoomsAPI

type RoomsAPI =
     RoomsJoin :<|>
       RoomsGet :<|>
         RoomsCreate :<|>
           RoomsDecline :<|>
             RoomsDismiss :<|>
               RoomsReportStatus :<|> RoomsLeave :<|> RoomsList

-- | Returns invitations to join rooms.
type RoomsList =
     "games" :> "v1" :> "rooms" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Join a room. For internal use by the Games SDK only. Calling this method
-- directly is unsupported.
type RoomsJoin =
     "games" :> "v1" :> "rooms" :> Capture "roomId" Text
       :> "join"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get the data for a room.
type RoomsGet =
     "games" :> "v1" :> "rooms" :> Capture "roomId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Create a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
type RoomsCreate =
     "games" :> "v1" :> "rooms" :> "create" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Decline an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
type RoomsDecline =
     "games" :> "v1" :> "rooms" :> Capture "roomId" Text
       :> "decline"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Dismiss an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
type RoomsDismiss =
     "games" :> "v1" :> "rooms" :> Capture "roomId" Text
       :> "dismiss"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates sent by a client reporting the status of peers in a room. For
-- internal use by the Games SDK only. Calling this method directly is
-- unsupported.
type RoomsReportStatus =
     "games" :> "v1" :> "rooms" :> Capture "roomId" Text
       :> "reportstatus"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Leave a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
type RoomsLeave =
     "games" :> "v1" :> "rooms" :> Capture "roomId" Text
       :> "leave"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LeaderboardsAPI =
     LeaderboardsGet :<|> LeaderboardsList

-- | Lists all the leaderboard metadata for your application.
type LeaderboardsList =
     "games" :> "v1" :> "leaderboards" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the metadata of the leaderboard with the given ID.
type LeaderboardsGet =
     "games" :> "v1" :> "leaderboards" :>
       Capture "leaderboardId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type QuestMilestonesAPI = QuestMilestonesClaim

-- | Report that a reward for the milestone corresponding to milestoneId for
-- the quest corresponding to questId has been claimed by the currently
-- authorized user.
type QuestMilestonesClaim =
     "games" :> "v1" :> "quests" :> Capture "questId" Text
       :> "milestones"
       :> Capture "milestoneId" Text
       :> "claim"
       :> QueryParam "requestId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type MetagameAPI =
     MetagameGetMetagameConfig :<|>
       MetagameListCategoriesByPlayer

-- | List play data aggregated per category for the player corresponding to
-- playerId.
type MetagameListCategoriesByPlayer =
     "games" :> "v1" :> "players" :>
       Capture "playerId" Text
       :> "categories"
       :> Capture "collection" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Return the metagame configuration data for the calling application.
type MetagameGetMetagameConfig =
     "games" :> "v1" :> "metagameConfig" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AchievementDefinitionsAPI =
     AchievementDefinitionsList

-- | Lists all the achievement definitions for your application.
type AchievementDefinitionsList =
     "games" :> "v1" :> "achievements" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AchievementsAPI =
     AchievementsUnlock :<|>
       AchievementsReveal :<|>
         AchievementsSetStepsAtLeast :<|>
           AchievementsUpdateMultiple :<|>
             AchievementsIncrement :<|> AchievementsList

-- | Lists the progress for all your application\'s achievements for the
-- currently authenticated player.
type AchievementsList =
     "games" :> "v1" :> "players" :>
       Capture "playerId" Text
       :> "achievements"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "state" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Unlocks this achievement for the currently authenticated player.
type AchievementsUnlock =
     "games" :> "v1" :> "achievements" :>
       Capture "achievementId" Text
       :> "unlock"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Sets the state of the achievement with the given ID to REVEALED for the
-- currently authenticated player.
type AchievementsReveal =
     "games" :> "v1" :> "achievements" :>
       Capture "achievementId" Text
       :> "reveal"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Sets the steps for the currently authenticated player towards unlocking
-- an achievement. If the steps parameter is less than the current number
-- of steps that the player already gained for the achievement, the
-- achievement is not modified.
type AchievementsSetStepsAtLeast =
     "games" :> "v1" :> "achievements" :>
       Capture "achievementId" Text
       :> "setStepsAtLeast"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "steps" Natural
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates multiple achievements for the currently authenticated player.
type AchievementsUpdateMultiple =
     "games" :> "v1" :> "achievements" :> "updateMultiple"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Increments the steps of the achievement with the given ID for the
-- currently authenticated player.
type AchievementsIncrement =
     "games" :> "v1" :> "achievements" :>
       Capture "achievementId" Text
       :> "increment"
       :> QueryParam "requestId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "stepsToIncrement" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SnapshotsAPI = SnapshotsGet :<|> SnapshotsList

-- | Retrieves a list of snapshots created by your application for the player
-- corresponding to the player ID.
type SnapshotsList =
     "games" :> "v1" :> "players" :>
       Capture "playerId" Text
       :> "snapshots"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the metadata for a given snapshot ID.
type SnapshotsGet =
     "games" :> "v1" :> "snapshots" :>
       Capture "snapshotId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type EventsAPI =
     EventsListByPlayer :<|>
       EventsRecord :<|> EventsListDefinitions

-- | Returns a list of the event definitions in this application.
type EventsListDefinitions =
     "games" :> "v1" :> "eventDefinitions" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a list showing the current progress on events in this
-- application for the currently authenticated user.
type EventsListByPlayer =
     "games" :> "v1" :> "events" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Records a batch of changes to the number of times events have occurred
-- for the currently authenticated user of this application.
type EventsRecord =
     "games" :> "v1" :> "events" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type QuestsAPI = QuestsAccept :<|> QuestsList

-- | Get a list of quests for your application and the currently
-- authenticated player.
type QuestsList =
     "games" :> "v1" :> "players" :>
       Capture "playerId" Text
       :> "quests"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Indicates that the currently authorized user will participate in the
-- quest.
type QuestsAccept =
     "games" :> "v1" :> "quests" :> Capture "questId" Text
       :> "accept"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PlayersAPI = PlayersGet :<|> PlayersList

-- | Get the collection of players for the currently authenticated user.
type PlayersList =
     "games" :> "v1" :> "players" :> "me" :> "players" :>
       Capture "collection" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the Player resource with the given ID. To retrieve the player
-- for the currently authenticated user, set playerId to me.
type PlayersGet =
     "games" :> "v1" :> "players" :>
       Capture "playerId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RevisionsAPI = RevisionsCheck

-- | Checks whether the games client is out of date.
type RevisionsCheck =
     "games" :> "v1" :> "revisions" :> "check" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "clientRevision" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ScoresAPI =
     ScoresGet :<|>
       ScoresSubmit :<|>
         ScoresSubmitMultiple :<|>
           ScoresListWindow :<|> ScoresList

-- | Lists the scores in a leaderboard, starting from the top.
type ScoresList =
     "games" :> "v1" :> "leaderboards" :>
       Capture "leaderboardId" Text
       :> "scores"
       :> Capture "collection" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "timeSpan" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get high scores, and optionally ranks, in leaderboards for the currently
-- authenticated player. For a specific time span, leaderboardId can be set
-- to ALL to retrieve data for all leaderboards in a given time span. NOTE:
-- You cannot ask for \'ALL\' leaderboards and \'ALL\' timeSpans in the
-- same request; only one parameter may be set to \'ALL\'.
type ScoresGet =
     "games" :> "v1" :> "players" :>
       Capture "playerId" Text
       :> "leaderboards"
       :> Capture "leaderboardId" Text
       :> "scores"
       :> Capture "timeSpan" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "includeRankType" Text
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Submits a score to the specified leaderboard.
type ScoresSubmit =
     "games" :> "v1" :> "leaderboards" :>
       Capture "leaderboardId" Text
       :> "scores"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "scoreTag" Text
       :> QueryParam "score" Int64
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Submits multiple scores to leaderboards.
type ScoresSubmitMultiple =
     "games" :> "v1" :> "leaderboards" :> "scores" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists the scores in a leaderboard around (and including) a player\'s
-- score.
type ScoresListWindow =
     "games" :> "v1" :> "leaderboards" :>
       Capture "leaderboardId" Text
       :> "window"
       :> Capture "collection" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "timeSpan" Text
       :> QueryParam "returnTopIfAbsent" Bool
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "resultsAbove" Int32
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PushtokensAPI =
     PushtokensUpdate :<|> PushtokensRemove

-- | Removes a push token for the current user and application. Removing a
-- non-existent push token will report success.
type PushtokensRemove =
     "games" :> "v1" :> "pushtokens" :> "remove" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Registers a push token for the current user and application.
type PushtokensUpdate =
     "games" :> "v1" :> "pushtokens" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TurnBasedMatchesAPI =
     TurnBasedMatchesList :<|>
       TurnBasedMatchesJoin :<|>
         TurnBasedMatchesFinish :<|>
           TurnBasedMatchesTakeTurn :<|>
             TurnBasedMatchesLeaveTurn :<|>
               TurnBasedMatchesGet :<|>
                 TurnBasedMatchesCreate :<|>
                   TurnBasedMatchesDecline :<|>
                     TurnBasedMatchesSync :<|>
                       TurnBasedMatchesDismiss :<|>
                         TurnBasedMatchesLeave :<|>
                           TurnBasedMatchesCancel :<|> TurnBasedMatchesRematch

-- | Create a rematch of a match that was previously completed, with the same
-- participants. This can be called by only one player on a match still in
-- their list; the player must have called Finish first. Returns the newly
-- created match; it will be the caller\'s turn.
type TurnBasedMatchesRematch =
     "games" :> "v1" :> "turnbasedmatches" :>
       Capture "matchId" Text
       :> "rematch"
       :> QueryParam "requestId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns turn-based matches the player is or was involved in.
type TurnBasedMatchesList =
     "games" :> "v1" :> "turnbasedmatches" :>
       QueryParam "maxCompletedMatches" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "includeMatchData" Bool
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Join a turn-based match.
type TurnBasedMatchesJoin =
     "games" :> "v1" :> "turnbasedmatches" :>
       Capture "matchId" Text
       :> "join"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Finish a turn-based match. Each player should make this call once, after
-- all results are in. Only the player whose turn it is may make the first
-- call to Finish, and can pass in the final match state.
type TurnBasedMatchesFinish =
     "games" :> "v1" :> "turnbasedmatches" :>
       Capture "matchId" Text
       :> "finish"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Commit the results of a player turn.
type TurnBasedMatchesTakeTurn =
     "games" :> "v1" :> "turnbasedmatches" :>
       Capture "matchId" Text
       :> "turn"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Leave a turn-based match during the current player\'s turn, without
-- canceling the match.
type TurnBasedMatchesLeaveTurn =
     "games" :> "v1" :> "turnbasedmatches" :>
       Capture "matchId" Text
       :> "leaveTurn"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "pendingParticipantId" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "matchVersion" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get the data for a turn-based match.
type TurnBasedMatchesGet =
     "games" :> "v1" :> "turnbasedmatches" :>
       Capture "matchId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "includeMatchData" Bool
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Create a turn-based match.
type TurnBasedMatchesCreate =
     "games" :> "v1" :> "turnbasedmatches" :> "create" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Decline an invitation to play a turn-based match.
type TurnBasedMatchesDecline =
     "games" :> "v1" :> "turnbasedmatches" :>
       Capture "matchId" Text
       :> "decline"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns turn-based matches the player is or was involved in that changed
-- since the last sync call, with the least recent changes coming first.
-- Matches that should be removed from the local cache will have a status
-- of MATCH_DELETED.
type TurnBasedMatchesSync =
     "games" :> "v1" :> "turnbasedmatches" :> "sync" :>
       QueryParam "maxCompletedMatches" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "includeMatchData" Bool
       :> QueryParam "language" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Dismiss a turn-based match from the match list. The match will no longer
-- show up in the list and will not generate notifications.
type TurnBasedMatchesDismiss =
     "games" :> "v1" :> "turnbasedmatches" :>
       Capture "matchId" Text
       :> "dismiss"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Leave a turn-based match when it is not the current player\'s turn,
-- without canceling the match.
type TurnBasedMatchesLeave =
     "games" :> "v1" :> "turnbasedmatches" :>
       Capture "matchId" Text
       :> "leave"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Cancel a turn-based match.
type TurnBasedMatchesCancel =
     "games" :> "v1" :> "turnbasedmatches" :>
       Capture "matchId" Text
       :> "cancel"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ApplicationsAPI =
     ApplicationsPlayed :<|> ApplicationsGet

-- | Retrieves the metadata of the application with the given ID. If the
-- requested application is not available for the specified platformType,
-- the returned response will not include any instance data.
type ApplicationsGet =
     "games" :> "v1" :> "applications" :>
       Capture "applicationId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "platformType" Text
       :> QueryParam "language" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Indicate that the the currently authenticated user is playing your
-- application.
type ApplicationsPlayed =
     "games" :> "v1" :> "applications" :> "played" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
