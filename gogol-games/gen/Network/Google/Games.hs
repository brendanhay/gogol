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
    -- * REST Resources

    -- ** Google Play Game Services API
      Games
    , games
    , gamesURL

    -- ** games.achievementDefinitions.list
    , module Network.Google.API.Games.AchievementDefinitions.List

    -- ** games.achievements.increment
    , module Network.Google.API.Games.Achievements.Increment

    -- ** games.achievements.list
    , module Network.Google.API.Games.Achievements.List

    -- ** games.achievements.reveal
    , module Network.Google.API.Games.Achievements.Reveal

    -- ** games.achievements.setStepsAtLeast
    , module Network.Google.API.Games.Achievements.SetStepsAtLeast

    -- ** games.achievements.unlock
    , module Network.Google.API.Games.Achievements.Unlock

    -- ** games.achievements.updateMultiple
    , module Network.Google.API.Games.Achievements.UpdateMultiple

    -- ** games.applications.get
    , module Network.Google.API.Games.Applications.Get

    -- ** games.applications.played
    , module Network.Google.API.Games.Applications.Played

    -- ** games.events.listByPlayer
    , module Network.Google.API.Games.Events.ListByPlayer

    -- ** games.events.listDefinitions
    , module Network.Google.API.Games.Events.ListDefinitions

    -- ** games.events.record
    , module Network.Google.API.Games.Events.Record

    -- ** games.leaderboards.get
    , module Network.Google.API.Games.Leaderboards.Get

    -- ** games.leaderboards.list
    , module Network.Google.API.Games.Leaderboards.List

    -- ** games.metagame.getMetagameConfig
    , module Network.Google.API.Games.Metagame.GetMetagameConfig

    -- ** games.metagame.listCategoriesByPlayer
    , module Network.Google.API.Games.Metagame.ListCategoriesByPlayer

    -- ** games.players.get
    , module Network.Google.API.Games.Players.Get

    -- ** games.players.list
    , module Network.Google.API.Games.Players.List

    -- ** games.pushtokens.remove
    , module Network.Google.API.Games.Pushtokens.Remove

    -- ** games.pushtokens.update
    , module Network.Google.API.Games.Pushtokens.Update

    -- ** games.questMilestones.claim
    , module Network.Google.API.Games.QuestMilestones.Claim

    -- ** games.quests.accept
    , module Network.Google.API.Games.Quests.Accept

    -- ** games.quests.list
    , module Network.Google.API.Games.Quests.List

    -- ** games.revisions.check
    , module Network.Google.API.Games.Revisions.Check

    -- ** games.rooms.create
    , module Network.Google.API.Games.Rooms.Create

    -- ** games.rooms.decline
    , module Network.Google.API.Games.Rooms.Decline

    -- ** games.rooms.dismiss
    , module Network.Google.API.Games.Rooms.Dismiss

    -- ** games.rooms.get
    , module Network.Google.API.Games.Rooms.Get

    -- ** games.rooms.join
    , module Network.Google.API.Games.Rooms.Join

    -- ** games.rooms.leave
    , module Network.Google.API.Games.Rooms.Leave

    -- ** games.rooms.list
    , module Network.Google.API.Games.Rooms.List

    -- ** games.rooms.reportStatus
    , module Network.Google.API.Games.Rooms.ReportStatus

    -- ** games.scores.get
    , module Network.Google.API.Games.Scores.Get

    -- ** games.scores.list
    , module Network.Google.API.Games.Scores.List

    -- ** games.scores.listWindow
    , module Network.Google.API.Games.Scores.ListWindow

    -- ** games.scores.submit
    , module Network.Google.API.Games.Scores.Submit

    -- ** games.scores.submitMultiple
    , module Network.Google.API.Games.Scores.SubmitMultiple

    -- ** games.snapshots.get
    , module Network.Google.API.Games.Snapshots.Get

    -- ** games.snapshots.list
    , module Network.Google.API.Games.Snapshots.List

    -- ** games.turnBasedMatches.cancel
    , module Network.Google.API.Games.TurnBasedMatches.Cancel

    -- ** games.turnBasedMatches.create
    , module Network.Google.API.Games.TurnBasedMatches.Create

    -- ** games.turnBasedMatches.decline
    , module Network.Google.API.Games.TurnBasedMatches.Decline

    -- ** games.turnBasedMatches.dismiss
    , module Network.Google.API.Games.TurnBasedMatches.Dismiss

    -- ** games.turnBasedMatches.finish
    , module Network.Google.API.Games.TurnBasedMatches.Finish

    -- ** games.turnBasedMatches.get
    , module Network.Google.API.Games.TurnBasedMatches.Get

    -- ** games.turnBasedMatches.join
    , module Network.Google.API.Games.TurnBasedMatches.Join

    -- ** games.turnBasedMatches.leave
    , module Network.Google.API.Games.TurnBasedMatches.Leave

    -- ** games.turnBasedMatches.leaveTurn
    , module Network.Google.API.Games.TurnBasedMatches.LeaveTurn

    -- ** games.turnBasedMatches.list
    , module Network.Google.API.Games.TurnBasedMatches.List

    -- ** games.turnBasedMatches.rematch
    , module Network.Google.API.Games.TurnBasedMatches.Rematch

    -- ** games.turnBasedMatches.sync
    , module Network.Google.API.Games.TurnBasedMatches.Sync

    -- ** games.turnBasedMatches.takeTurn
    , module Network.Google.API.Games.TurnBasedMatches.TakeTurn

    -- * Types

    -- ** EventUpdateRequest
    , EventUpdateRequest
    , eventUpdateRequest
    , eurUpdateCount
    , eurKind
    , eurDefinitionId

    -- ** AchievementUnlockResponse
    , AchievementUnlockResponse
    , achievementUnlockResponse
    , aurKind
    , aurNewlyUnlocked

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

    -- ** ScoresList'TimeSpan
    , ScoresList'TimeSpan (..)

    -- ** ApplicationsGet'PlatformType
    , ApplicationsGet'PlatformType (..)

    -- ** LeaderboardScoreRank
    , LeaderboardScoreRank
    , leaderboardScoreRank
    , lsrNumScores
    , lsrKind
    , lsrFormattedRank
    , lsrFormattedNumScores
    , lsrRank

    -- ** AchievementUpdateMultipleRequest
    , AchievementUpdateMultipleRequest
    , achievementUpdateMultipleRequest
    , aumrKind
    , aumrUpdates

    -- ** RoomP2PStatuses
    , RoomP2PStatuses
    , roomP2PStatuses
    , rppsKind
    , rppsUpdates

    -- ** ImageAsset
    , ImageAsset
    , imageAsset
    , iaHeight
    , iaKind
    , iaUrl
    , iaWidth
    , iaName

    -- ** AchievementUpdateRequest
    , AchievementUpdateRequest
    , achievementUpdateRequest
    , aAchievementId
    , aKind
    , aUpdateType
    , aSetStepsAtLeastPayload
    , aIncrementPayload

    -- ** RoomAutoMatchStatus
    , RoomAutoMatchStatus
    , roomAutoMatchStatus
    , ramsKind
    , ramsWaitEstimateSeconds

    -- ** PlayerScoreListResponse
    , PlayerScoreListResponse
    , playerScoreListResponse
    , pslrSubmittedScores
    , pslrKind

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

    -- ** TurnBasedMatchTurn
    , TurnBasedMatchTurn
    , turnBasedMatchTurn
    , tbmtResults
    , tbmtKind
    , tbmtData
    , tbmtPendingParticipantId
    , tbmtMatchVersion

    -- ** ApplicationCategory
    , ApplicationCategory
    , applicationCategory
    , acSecondary
    , acKind
    , acPrimary

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

    -- ** Alt
    , Alt (..)

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

    -- ** AchievementIncrementResponse
    , AchievementIncrementResponse
    , achievementIncrementResponse
    , airKind
    , airNewlyUnlocked
    , airCurrentSteps

    -- ** TurnBasedMatchResults
    , TurnBasedMatchResults
    , turnBasedMatchResults
    , tbmrResults
    , tbmrKind
    , tbmrData
    , tbmrMatchVersion

    -- ** Played
    , Played
    , played
    , pKind
    , pAutoMatched
    , pTimeMillis

    -- ** MetagameListCategoriesByPlayer'Collection
    , MetagameListCategoriesByPlayer'Collection (..)

    -- ** RoomLeaveRequest
    , RoomLeaveRequest
    , roomLeaveRequest
    , rlrKind
    , rlrReason
    , rlrLeaveDiagnostics

    -- ** PlayerAchievementListResponse
    , PlayerAchievementListResponse
    , playerAchievementListResponse
    , palrNextPageToken
    , palrKind
    , palrItems

    -- ** EventBatchRecordFailure
    , EventBatchRecordFailure
    , eventBatchRecordFailure
    , ebrfKind
    , ebrfRange
    , ebrfFailureCause

    -- ** EventRecordRequest
    , EventRecordRequest
    , eventRecordRequest
    , errRequestId
    , errKind
    , errCurrentTimeMillis
    , errTimePeriods

    -- ** PushTokenId
    , PushTokenId
    , pushTokenId
    , ptiIos
    , ptiKind

    -- ** ScoresListWindow'TimeSpan
    , ScoresListWindow'TimeSpan (..)

    -- ** ScoreSubmission
    , ScoreSubmission
    , scoreSubmission
    , ssSignature
    , ssScoreTag
    , ssScore
    , ssKind
    , ssLeaderboardId

    -- ** EventPeriodUpdate
    , EventPeriodUpdate
    , eventPeriodUpdate
    , epuKind
    , epuTimePeriod
    , epuUpdates

    -- ** QuestMilestone
    , QuestMilestone
    , questMilestone
    , qmState
    , qmKind
    , qmId
    , qmCompletionRewardData
    , qmCriteria

    -- ** TurnBasedMatchSync
    , TurnBasedMatchSync
    , turnBasedMatchSync
    , tbmsMoreAvailable
    , tbmsNextPageToken
    , tbmsKind
    , tbmsItems

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

    -- ** PeerSessionDiagnostics
    , PeerSessionDiagnostics
    , peerSessionDiagnostics
    , psdConnectedTimestampMillis
    , psdParticipantId
    , psdKind
    , psdUnreliableChannel
    , psdReliableChannel

    -- ** AggregateStats
    , AggregateStats
    , aggregateStats
    , asMax
    , asKind
    , asCount
    , asMin
    , asSum

    -- ** RoomAutoMatchingCriteria
    , RoomAutoMatchingCriteria
    , roomAutoMatchingCriteria
    , ramcKind
    , ramcExclusiveBitmask
    , ramcMaxAutoMatchingPlayers
    , ramcMinAutoMatchingPlayers

    -- ** TurnBasedMatchRematch
    , TurnBasedMatchRematch
    , turnBasedMatchRematch
    , tRematch
    , tKind
    , tPreviousMatch

    -- ** InstanceWebDetails
    , InstanceWebDetails
    , instanceWebDetails
    , iwdPreferred
    , iwdKind
    , iwdLaunchUrl

    -- ** GamesAchievementIncrement
    , GamesAchievementIncrement
    , gamesAchievementIncrement
    , gaiRequestId
    , gaiKind
    , gaiSteps

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

    -- ** PlayerExperienceInfo
    , PlayerExperienceInfo
    , playerExperienceInfo
    , peiKind
    , peiCurrentExperiencePoints
    , peiCurrentLevel
    , peiNextLevel
    , peiLastLevelUpTimestampMillis

    -- ** GamesAchievementSetStepsAtLeast
    , GamesAchievementSetStepsAtLeast
    , gamesAchievementSetStepsAtLeast
    , gassalKind
    , gassalSteps

    -- ** ParticipantResult
    , ParticipantResult
    , participantResult
    , prParticipantId
    , prKind
    , prResult
    , prPlacing

    -- ** RevisionCheckResponse
    , RevisionCheckResponse
    , revisionCheckResponse
    , rcrApiVersion
    , rcrKind
    , rcrRevisionStatus

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

    -- ** PushTokenIdIos
    , PushTokenIdIos
    , pushTokenIdIos
    , ptiiApnsDeviceToken
    , ptiiApnsEnvironment

    -- ** EventUpdateResponse
    , EventUpdateResponse
    , eventUpdateResponse
    , ePlayerEvents
    , eBatchFailures
    , eEventFailures
    , eKind

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

    -- ** PlayerScoreSubmissionList
    , PlayerScoreSubmissionList
    , playerScoreSubmissionList
    , psslKind
    , psslScores

    -- ** EventRecordFailure
    , EventRecordFailure
    , eventRecordFailure
    , erfKind
    , erfFailureCause
    , erfEventId

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

    -- ** RoomJoinRequest
    , RoomJoinRequest
    , roomJoinRequest
    , rjrNetworkDiagnostics
    , rjrKind
    , rjrClientAddress
    , rjrCapabilities

    -- ** Room
    , Room
    , room
    , rooStatus
    , rooVariant
    , rooKind
    , rooAutoMatchingStatus
    , rooCreationDetails
    , rooInviterId
    , rooLastUpdateDetails
    , rooRoomStatusVersion
    , rooParticipants
    , rooApplicationId
    , rooAutoMatchingCriteria
    , rooRoomId
    , rooDescription

    -- ** TurnBasedMatchData
    , TurnBasedMatchData
    , turnBasedMatchData
    , tbmdKind
    , tbmdData
    , tbmdDataAvailable

    -- ** PlayerEvent
    , PlayerEvent
    , playerEvent
    , peKind
    , peNumEvents
    , peFormattedNumEvents
    , peDefinitionId
    , pePlayerId

    -- ** QuestListResponse
    , QuestListResponse
    , questListResponse
    , qlrNextPageToken
    , qlrKind
    , qlrItems

    -- ** PlayerName
    , PlayerName
    , playerName
    , pnGivenName
    , pnFamilyName

    -- ** ScoresListWindow'Collection
    , ScoresListWindow'Collection (..)

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

    -- ** PlayerListResponse
    , PlayerListResponse
    , playerListResponse
    , plrNextPageToken
    , plrKind
    , plrItems

    -- ** TurnBasedMatchCreateRequest
    , TurnBasedMatchCreateRequest
    , turnBasedMatchCreateRequest
    , tbmcrRequestId
    , tbmcrVariant
    , tbmcrKind
    , tbmcrInvitedPlayerIds
    , tbmcrAutoMatchingCriteria

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

    -- ** RoomCreateRequest
    , RoomCreateRequest
    , roomCreateRequest
    , rRequestId
    , rVariant
    , rNetworkDiagnostics
    , rKind
    , rInvitedPlayerIds
    , rClientAddress
    , rAutoMatchingCriteria
    , rCapabilities

    -- ** LeaderboardScores
    , LeaderboardScores
    , leaderboardScores
    , lsNextPageToken
    , lsNumScores
    , lsKind
    , lsPlayerScore
    , lsItems
    , lsPrevPageToken

    -- ** AchievementUpdateResponse
    , AchievementUpdateResponse
    , achievementUpdateResponse
    , achUpdateOccurred
    , achAchievementId
    , achKind
    , achCurrentState
    , achNewlyUnlocked
    , achCurrentSteps

    -- ** TurnBasedMatchList
    , TurnBasedMatchList
    , turnBasedMatchList
    , tbmlNextPageToken
    , tbmlKind
    , tbmlItems

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

    -- ** SnapshotListResponse
    , SnapshotListResponse
    , snapshotListResponse
    , slrNextPageToken
    , slrKind
    , slrItems

    -- ** PushToken
    , PushToken
    , pushToken
    , ptClientRevision
    , ptKind
    , ptLanguage
    , ptId

    -- ** AchievementUpdateMultipleResponse
    , AchievementUpdateMultipleResponse
    , achievementUpdateMultipleResponse
    , aumruKind
    , aumruUpdatedAchievements

    -- ** RoomList
    , RoomList
    , roomList
    , rlNextPageToken
    , rlKind
    , rlItems

    -- ** PlayerLevel
    , PlayerLevel
    , playerLevel
    , plMaxExperiencePoints
    , plKind
    , plMinExperiencePoints
    , plLevel

    -- ** QuestCriterion
    , QuestCriterion
    , questCriterion
    , qcCurrentContribution
    , qcCompletionContribution
    , qcKind
    , qcInitialPlayerProgress
    , qcEventId

    -- ** AchievementsList'State
    , AchievementsList'State (..)

    -- ** PlayerScoreResponse
    , PlayerScoreResponse
    , playerScoreResponse
    , psrScoreTag
    , psrKind
    , psrFormattedScore
    , psrLeaderboardId
    , psrBeatenScoreTimeSpans
    , psrUnbeatenScores

    -- ** InstanceAndroidDetails
    , InstanceAndroidDetails
    , instanceAndroidDetails
    , iadPackageName
    , iadPreferred
    , iadKind
    , iadEnablePiracyCheck

    -- ** AnonymousPlayer
    , AnonymousPlayer
    , anonymousPlayer
    , apAvatarImageUrl
    , apKind
    , apDisplayName

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

    -- ** Category
    , Category
    , category
    , cKind
    , cCategory
    , cExperiencePoints

    -- ** LeaderboardListResponse
    , LeaderboardListResponse
    , leaderboardListResponse
    , llrNextPageToken
    , llrKind
    , llrItems

    -- ** TurnBasedMatchParticipant
    , TurnBasedMatchParticipant
    , turnBasedMatchParticipant
    , tbmpStatus
    , tbmpKind
    , tbmpId
    , tbmpAutoMatched
    , tbmpPlayer
    , tbmpAutoMatchedPlayer

    -- ** ScoresGet'TimeSpan
    , ScoresGet'TimeSpan (..)

    -- ** RoomClientAddress
    , RoomClientAddress
    , roomClientAddress
    , rcaKind
    , rcaXmppAddress

    -- ** EventDefinitionListResponse
    , EventDefinitionListResponse
    , eventDefinitionListResponse
    , edlrNextPageToken
    , edlrKind
    , edlrItems

    -- ** QuestContribution
    , QuestContribution
    , questContribution
    , qKind
    , qValue
    , qFormattedValue

    -- ** PlayersList'Collection
    , PlayersList'Collection (..)

    -- ** AchievementDefinitionsListResponse
    , AchievementDefinitionsListResponse
    , achievementDefinitionsListResponse
    , adlrNextPageToken
    , adlrKind
    , adlrItems

    -- ** RoomStatus
    , RoomStatus
    , roomStatus
    , rsStatus
    , rsKind
    , rsAutoMatchingStatus
    , rsStatusVersion
    , rsParticipants
    , rsRoomId

    -- ** ScoresList'Collection
    , ScoresList'Collection (..)

    -- ** TurnBasedAutoMatchingCriteria
    , TurnBasedAutoMatchingCriteria
    , turnBasedAutoMatchingCriteria
    , tbamcKind
    , tbamcExclusiveBitmask
    , tbamcMaxAutoMatchingPlayers
    , tbamcMinAutoMatchingPlayers

    -- ** ScoresGet'IncludeRankType
    , ScoresGet'IncludeRankType (..)

    -- ** PlayerLeaderboardScoreListResponse
    , PlayerLeaderboardScoreListResponse
    , playerLeaderboardScoreListResponse
    , plslrNextPageToken
    , plslrKind
    , plslrItems
    , plslrPlayer

    -- ** SnapshotImage
    , SnapshotImage
    , snapshotImage
    , siHeight
    , siKind
    , siUrl
    , siMimeType
    , siWidth

    -- ** PlayerScore
    , PlayerScore
    , playerScore
    , psScoreTag
    , psScore
    , psKind
    , psFormattedScore
    , psTimeSpan

    -- ** TurnBasedMatchDataRequest
    , TurnBasedMatchDataRequest
    , turnBasedMatchDataRequest
    , tbmdrKind
    , tbmdrData

    -- ** EventChild
    , EventChild
    , eventChild
    , ecKind
    , ecChildId

    -- ** PlayerEventListResponse
    , PlayerEventListResponse
    , playerEventListResponse
    , pelrNextPageToken
    , pelrKind
    , pelrItems

    -- ** EventPeriodRange
    , EventPeriodRange
    , eventPeriodRange
    , eprKind
    , eprPeriodStartMillis
    , eprPeriodEndMillis

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

    -- ** CategoryListResponse
    , CategoryListResponse
    , categoryListResponse
    , clrNextPageToken
    , clrKind
    , clrItems

    -- ** TurnBasedMatchModification
    , TurnBasedMatchModification
    , turnBasedMatchModification
    , tbmmParticipantId
    , tbmmKind
    , tbmmModifiedTimestampMillis

    -- ** MetagameConfig
    , MetagameConfig
    , metagameConfig
    , mcKind
    , mcCurrentVersion
    , mcPlayerLevels

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

    -- ** Leaderboard
    , Leaderboard
    , leaderboard
    , lKind
    , lIsIconUrlDefault
    , lName
    , lId
    , lIconUrl
    , lOrder
    ) where

import           Network.Google.API.Games.AchievementDefinitions.List
import           Network.Google.API.Games.Achievements.Increment
import           Network.Google.API.Games.Achievements.List
import           Network.Google.API.Games.Achievements.Reveal
import           Network.Google.API.Games.Achievements.SetStepsAtLeast
import           Network.Google.API.Games.Achievements.Unlock
import           Network.Google.API.Games.Achievements.UpdateMultiple
import           Network.Google.API.Games.Applications.Get
import           Network.Google.API.Games.Applications.Played
import           Network.Google.API.Games.Events.ListByPlayer
import           Network.Google.API.Games.Events.ListDefinitions
import           Network.Google.API.Games.Events.Record
import           Network.Google.API.Games.Leaderboards.Get
import           Network.Google.API.Games.Leaderboards.List
import           Network.Google.API.Games.Metagame.GetMetagameConfig
import           Network.Google.API.Games.Metagame.ListCategoriesByPlayer
import           Network.Google.API.Games.Players.Get
import           Network.Google.API.Games.Players.List
import           Network.Google.API.Games.Pushtokens.Remove
import           Network.Google.API.Games.Pushtokens.Update
import           Network.Google.API.Games.QuestMilestones.Claim
import           Network.Google.API.Games.Quests.Accept
import           Network.Google.API.Games.Quests.List
import           Network.Google.API.Games.Revisions.Check
import           Network.Google.API.Games.Rooms.Create
import           Network.Google.API.Games.Rooms.Decline
import           Network.Google.API.Games.Rooms.Dismiss
import           Network.Google.API.Games.Rooms.Get
import           Network.Google.API.Games.Rooms.Join
import           Network.Google.API.Games.Rooms.Leave
import           Network.Google.API.Games.Rooms.List
import           Network.Google.API.Games.Rooms.ReportStatus
import           Network.Google.API.Games.Scores.Get
import           Network.Google.API.Games.Scores.List
import           Network.Google.API.Games.Scores.ListWindow
import           Network.Google.API.Games.Scores.Submit
import           Network.Google.API.Games.Scores.SubmitMultiple
import           Network.Google.API.Games.Snapshots.Get
import           Network.Google.API.Games.Snapshots.List
import           Network.Google.API.Games.TurnBasedMatches.Cancel
import           Network.Google.API.Games.TurnBasedMatches.Create
import           Network.Google.API.Games.TurnBasedMatches.Decline
import           Network.Google.API.Games.TurnBasedMatches.Dismiss
import           Network.Google.API.Games.TurnBasedMatches.Finish
import           Network.Google.API.Games.TurnBasedMatches.Get
import           Network.Google.API.Games.TurnBasedMatches.Join
import           Network.Google.API.Games.TurnBasedMatches.Leave
import           Network.Google.API.Games.TurnBasedMatches.LeaveTurn
import           Network.Google.API.Games.TurnBasedMatches.List
import           Network.Google.API.Games.TurnBasedMatches.Rematch
import           Network.Google.API.Games.TurnBasedMatches.Sync
import           Network.Google.API.Games.TurnBasedMatches.TakeTurn
import           Network.Google.Games.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Games =
     TurnBasedMatchesFinishAPI :<|> LeaderboardsListAPI
       :<|> RoomsGetAPI
       :<|> AchievementsListAPI
       :<|> ApplicationsPlayedAPI
       :<|> TurnBasedMatchesCancelAPI
       :<|> PlayersGetAPI
       :<|> PlayersListAPI
       :<|> SnapshotsGetAPI
       :<|> QuestsAcceptAPI
       :<|> MetagameListCategoriesByPlayerAPI
       :<|> RoomsListAPI
       :<|> EventsListDefinitionsAPI
       :<|> AchievementsUpdateMultipleAPI
       :<|> ApplicationsGetAPI
       :<|> EventsListByPlayerAPI
       :<|> SnapshotsListAPI
       :<|> TurnBasedMatchesDeclineAPI
       :<|> TurnBasedMatchesJoinAPI
       :<|> TurnBasedMatchesCreateAPI
       :<|> TurnBasedMatchesRematchAPI
       :<|> ScoresListWindowAPI
       :<|> ScoresSubmitAPI
       :<|> AchievementsSetStepsAtLeastAPI
       :<|> RoomsCreateAPI
       :<|> RoomsReportStatusAPI
       :<|> RoomsDismissAPI
       :<|> TurnBasedMatchesSyncAPI
       :<|> ScoresGetAPI
       :<|> TurnBasedMatchesGetAPI
       :<|> TurnBasedMatchesLeaveTurnAPI
       :<|> TurnBasedMatchesLeaveAPI
       :<|> QuestMilestonesClaimAPI
       :<|> RoomsLeaveAPI
       :<|> PushtokensUpdateAPI
       :<|> ScoresSubmitMultipleAPI
       :<|> TurnBasedMatchesTakeTurnAPI
       :<|> MetagameGetMetagameConfigAPI
       :<|> RoomsJoinAPI
       :<|> LeaderboardsGetAPI
       :<|> AchievementsUnlockAPI
       :<|> EventsRecordAPI
       :<|> AchievementsRevealAPI
       :<|> TurnBasedMatchesDismissAPI
       :<|> AchievementsIncrementAPI
       :<|> RoomsDeclineAPI
       :<|> RevisionsCheckAPI
       :<|> PushtokensRemoveAPI
       :<|> TurnBasedMatchesListAPI
       :<|> AchievementDefinitionsListAPI
       :<|> QuestsListAPI
       :<|> ScoresListAPI

games :: Proxy Games
games = Proxy
