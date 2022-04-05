{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CivicInfo.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CivicInfo.Internal.Product
  ( -- * AdministrationRegion
    AdministrationRegion (..),
    newAdministrationRegion,

    -- * AdministrativeBody
    AdministrativeBody (..),
    newAdministrativeBody,

    -- * Candidate
    Candidate (..),
    newCandidate,

    -- * Channel
    Channel (..),
    newChannel,

    -- * Contest
    Contest (..),
    newContest,

    -- * DivisionSearchResponse
    DivisionSearchResponse (..),
    newDivisionSearchResponse,

    -- * DivisionSearchResult
    DivisionSearchResult (..),
    newDivisionSearchResult,

    -- * Election
    Election (..),
    newElection,

    -- * ElectionOfficial
    ElectionOfficial (..),
    newElectionOfficial,

    -- * ElectionsQueryResponse
    ElectionsQueryResponse (..),
    newElectionsQueryResponse,

    -- * ElectoralDistrict
    ElectoralDistrict (..),
    newElectoralDistrict,

    -- * FeatureIdProto
    FeatureIdProto (..),
    newFeatureIdProto,

    -- * GeocodingSummary
    GeocodingSummary (..),
    newGeocodingSummary,

    -- * GeographicDivision
    GeographicDivision (..),
    newGeographicDivision,

    -- * MessageSet
    MessageSet (..),
    newMessageSet,

    -- * Office
    Office (..),
    newOffice,

    -- * Official
    Official (..),
    newOfficial,

    -- * PollingLocation
    PollingLocation (..),
    newPollingLocation,

    -- * RepresentativeInfoData
    RepresentativeInfoData (..),
    newRepresentativeInfoData,

    -- * RepresentativeInfoData_Divisions
    RepresentativeInfoData_Divisions (..),
    newRepresentativeInfoData_Divisions,

    -- * RepresentativeInfoResponse
    RepresentativeInfoResponse (..),
    newRepresentativeInfoResponse,

    -- * RepresentativeInfoResponse_Divisions
    RepresentativeInfoResponse_Divisions (..),
    newRepresentativeInfoResponse_Divisions,

    -- * SimpleAddressType
    SimpleAddressType (..),
    newSimpleAddressType,

    -- * Source
    Source (..),
    newSource,

    -- * VoterInfoResponse
    VoterInfoResponse (..),
    newVoterInfoResponse,
  )
where

import Gogol.CivicInfo.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Describes information about a regional election administrative area.
--
-- /See:/ 'newAdministrationRegion' smart constructor.
data AdministrationRegion = AdministrationRegion
  { -- | The election administration body for this area.
    electionAdministrationBody :: (Core.Maybe AdministrativeBody),
    -- | The city or county that provides election information for this voter. This object can have the same elements as state.
    localJurisdiction :: (Core.Maybe AdministrationRegion),
    -- | The name of the jurisdiction.
    name :: (Core.Maybe Core.Text),
    -- | A list of sources for this area. If multiple sources are listed the data has been aggregated from those sources.
    sources :: (Core.Maybe [Source])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdministrationRegion' with the minimum fields required to make a request.
newAdministrationRegion ::
  AdministrationRegion
newAdministrationRegion =
  AdministrationRegion
    { electionAdministrationBody = Core.Nothing,
      localJurisdiction = Core.Nothing,
      name = Core.Nothing,
      sources = Core.Nothing
    }

instance Core.FromJSON AdministrationRegion where
  parseJSON =
    Core.withObject
      "AdministrationRegion"
      ( \o ->
          AdministrationRegion
            Core.<$> (o Core..:? "electionAdministrationBody")
            Core.<*> (o Core..:? "local_jurisdiction")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "sources")
      )

instance Core.ToJSON AdministrationRegion where
  toJSON AdministrationRegion {..} =
    Core.object
      ( Core.catMaybes
          [ ("electionAdministrationBody" Core..=)
              Core.<$> electionAdministrationBody,
            ("local_jurisdiction" Core..=)
              Core.<$> localJurisdiction,
            ("name" Core..=) Core.<$> name,
            ("sources" Core..=) Core.<$> sources
          ]
      )

-- | Information about an election administrative body (e.g. County Board of Elections).
--
-- /See:/ 'newAdministrativeBody' smart constructor.
data AdministrativeBody = AdministrativeBody
  { -- | A URL provided by this administrative body for information on absentee voting.
    absenteeVotingInfoUrl :: (Core.Maybe Core.Text),
    -- | A URL provided by this administrative body to give contest information to the voter.
    ballotInfoUrl :: (Core.Maybe Core.Text),
    -- | The mailing address of this administrative body.
    correspondenceAddress :: (Core.Maybe SimpleAddressType),
    -- | A URL provided by this administrative body for looking up general election information.
    electionInfoUrl :: (Core.Maybe Core.Text),
    -- | A last minute or emergency notification text provided by this administrative body.
    electionNoticeText :: (Core.Maybe Core.Text),
    -- | A URL provided by this administrative body for additional information related to the last minute or emergency notification.
    electionNoticeUrl :: (Core.Maybe Core.Text),
    -- | The election officials for this election administrative body.
    electionOfficials :: (Core.Maybe [ElectionOfficial]),
    -- | A URL provided by this administrative body for confirming that the voter is registered to vote.
    electionRegistrationConfirmationUrl :: (Core.Maybe Core.Text),
    -- | A URL provided by this administrative body for looking up how to register to vote.
    electionRegistrationUrl :: (Core.Maybe Core.Text),
    -- | A URL provided by this administrative body describing election rules to the voter.
    electionRulesUrl :: (Core.Maybe Core.Text),
    -- | A description of the hours of operation for this administrative body.
    hoursOfOperation :: (Core.Maybe Core.Text),
    -- | The name of this election administrative body.
    name :: (Core.Maybe Core.Text),
    -- | The physical address of this administrative body.
    physicalAddress :: (Core.Maybe SimpleAddressType),
    -- | A description of the services this administrative body may provide.
    voterServices :: (Core.Maybe [Core.Text]),
    -- | A URL provided by this administrative body for looking up where to vote.
    votingLocationFinderUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdministrativeBody' with the minimum fields required to make a request.
newAdministrativeBody ::
  AdministrativeBody
newAdministrativeBody =
  AdministrativeBody
    { absenteeVotingInfoUrl = Core.Nothing,
      ballotInfoUrl = Core.Nothing,
      correspondenceAddress = Core.Nothing,
      electionInfoUrl = Core.Nothing,
      electionNoticeText = Core.Nothing,
      electionNoticeUrl = Core.Nothing,
      electionOfficials = Core.Nothing,
      electionRegistrationConfirmationUrl = Core.Nothing,
      electionRegistrationUrl = Core.Nothing,
      electionRulesUrl = Core.Nothing,
      hoursOfOperation = Core.Nothing,
      name = Core.Nothing,
      physicalAddress = Core.Nothing,
      voterServices = Core.Nothing,
      votingLocationFinderUrl = Core.Nothing
    }

instance Core.FromJSON AdministrativeBody where
  parseJSON =
    Core.withObject
      "AdministrativeBody"
      ( \o ->
          AdministrativeBody
            Core.<$> (o Core..:? "absenteeVotingInfoUrl")
            Core.<*> (o Core..:? "ballotInfoUrl")
            Core.<*> (o Core..:? "correspondenceAddress")
            Core.<*> (o Core..:? "electionInfoUrl")
            Core.<*> (o Core..:? "electionNoticeText")
            Core.<*> (o Core..:? "electionNoticeUrl")
            Core.<*> (o Core..:? "electionOfficials")
            Core.<*> (o Core..:? "electionRegistrationConfirmationUrl")
            Core.<*> (o Core..:? "electionRegistrationUrl")
            Core.<*> (o Core..:? "electionRulesUrl")
            Core.<*> (o Core..:? "hoursOfOperation")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "physicalAddress")
            Core.<*> (o Core..:? "voter_services")
            Core.<*> (o Core..:? "votingLocationFinderUrl")
      )

instance Core.ToJSON AdministrativeBody where
  toJSON AdministrativeBody {..} =
    Core.object
      ( Core.catMaybes
          [ ("absenteeVotingInfoUrl" Core..=)
              Core.<$> absenteeVotingInfoUrl,
            ("ballotInfoUrl" Core..=) Core.<$> ballotInfoUrl,
            ("correspondenceAddress" Core..=)
              Core.<$> correspondenceAddress,
            ("electionInfoUrl" Core..=) Core.<$> electionInfoUrl,
            ("electionNoticeText" Core..=)
              Core.<$> electionNoticeText,
            ("electionNoticeUrl" Core..=)
              Core.<$> electionNoticeUrl,
            ("electionOfficials" Core..=)
              Core.<$> electionOfficials,
            ("electionRegistrationConfirmationUrl" Core..=)
              Core.<$> electionRegistrationConfirmationUrl,
            ("electionRegistrationUrl" Core..=)
              Core.<$> electionRegistrationUrl,
            ("electionRulesUrl" Core..=)
              Core.<$> electionRulesUrl,
            ("hoursOfOperation" Core..=)
              Core.<$> hoursOfOperation,
            ("name" Core..=) Core.<$> name,
            ("physicalAddress" Core..=) Core.<$> physicalAddress,
            ("voter_services" Core..=) Core.<$> voterServices,
            ("votingLocationFinderUrl" Core..=)
              Core.<$> votingLocationFinderUrl
          ]
      )

-- | Information about a candidate running for elected office.
--
-- /See:/ 'newCandidate' smart constructor.
data Candidate = Candidate
  { -- | The URL for the candidate\'s campaign web site.
    candidateUrl :: (Core.Maybe Core.Text),
    -- | A list of known (social) media channels for this candidate.
    channels :: (Core.Maybe [Channel]),
    -- | The email address for the candidate\'s campaign.
    email :: (Core.Maybe Core.Text),
    -- | The candidate\'s name. If this is a joint ticket it will indicate the name of the candidate at the top of a ticket followed by a \/ and that name of candidate at the bottom of the ticket. e.g. \"Mitt Romney \/ Paul Ryan\"
    name :: (Core.Maybe Core.Text),
    -- | The order the candidate appears on the ballot for this contest.
    orderOnBallot :: (Core.Maybe Core.Int64),
    -- | The full name of the party the candidate is a member of.
    party :: (Core.Maybe Core.Text),
    -- | The voice phone number for the candidate\'s campaign office.
    phone :: (Core.Maybe Core.Text),
    -- | A URL for a photo of the candidate.
    photoUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Candidate' with the minimum fields required to make a request.
newCandidate ::
  Candidate
newCandidate =
  Candidate
    { candidateUrl = Core.Nothing,
      channels = Core.Nothing,
      email = Core.Nothing,
      name = Core.Nothing,
      orderOnBallot = Core.Nothing,
      party = Core.Nothing,
      phone = Core.Nothing,
      photoUrl = Core.Nothing
    }

instance Core.FromJSON Candidate where
  parseJSON =
    Core.withObject
      "Candidate"
      ( \o ->
          Candidate
            Core.<$> (o Core..:? "candidateUrl")
            Core.<*> (o Core..:? "channels")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "name")
            Core.<*> ( o Core..:? "orderOnBallot"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "party")
            Core.<*> (o Core..:? "phone")
            Core.<*> (o Core..:? "photoUrl")
      )

instance Core.ToJSON Candidate where
  toJSON Candidate {..} =
    Core.object
      ( Core.catMaybes
          [ ("candidateUrl" Core..=) Core.<$> candidateUrl,
            ("channels" Core..=) Core.<$> channels,
            ("email" Core..=) Core.<$> email,
            ("name" Core..=) Core.<$> name,
            ("orderOnBallot" Core..=) Core.. Core.AsText
              Core.<$> orderOnBallot,
            ("party" Core..=) Core.<$> party,
            ("phone" Core..=) Core.<$> phone,
            ("photoUrl" Core..=) Core.<$> photoUrl
          ]
      )

-- | A social media or web channel for a candidate.
--
-- /See:/ 'newChannel' smart constructor.
data Channel = Channel
  { -- | The unique public identifier for the candidate\'s channel.
    id :: (Core.Maybe Core.Text),
    -- | The type of channel. The following is a list of types of channels, but is not exhaustive. More channel types may be added at a later time. One of: GooglePlus, YouTube, Facebook, Twitter
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
newChannel ::
  Channel
newChannel = Channel {id = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON Channel where
  parseJSON =
    Core.withObject
      "Channel"
      ( \o ->
          Channel
            Core.<$> (o Core..:? "id") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Channel where
  toJSON Channel {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Information about a contest that appears on a voter\'s ballot.
--
-- /See:/ 'newContest' smart constructor.
data Contest = Contest
  { -- | A number specifying the position of this contest on the voter\'s ballot.
    ballotPlacement :: (Core.Maybe Core.Int64),
    -- | The official title on the ballot for this contest, only where available.
    ballotTitle :: (Core.Maybe Core.Text),
    -- | The candidate choices for this contest.
    candidates :: (Core.Maybe [Candidate]),
    -- | Information about the electoral district that this contest is in.
    district :: (Core.Maybe ElectoralDistrict),
    -- | A description of any additional eligibility requirements for voting in this contest.
    electorateSpecifications :: (Core.Maybe Core.Text),
    -- | The levels of government of the office for this contest. There may be more than one in cases where a jurisdiction effectively acts at two different levels of government; for example, the mayor of the District of Columbia acts at \"locality\" level, but also effectively at both \"administrative-area-2\" and \"administrative-area-1\".
    level :: (Core.Maybe [Contest_LevelItem]),
    -- | The number of candidates that will be elected to office in this contest.
    numberElected :: (Core.Maybe Core.Int64),
    -- | The number of candidates that a voter may vote for in this contest.
    numberVotingFor :: (Core.Maybe Core.Int64),
    -- | The name of the office for this contest.
    office :: (Core.Maybe Core.Text),
    -- | If this is a partisan election, the name of the party\/parties it is for.
    primaryParties :: (Core.Maybe [Core.Text]),
    -- | [DEPRECATED] If this is a partisan election, the name of the party it is for. This field as deprecated in favor of the array \"primaryParties\", as contests may contain more than one party.
    primaryParty :: (Core.Maybe Core.Text),
    -- | The set of ballot responses for the referendum. A ballot response represents a line on the ballot. Common examples might include \"yes\" or \"no\" for referenda. This field is only populated for contests of type \'Referendum\'.
    referendumBallotResponses :: (Core.Maybe [Core.Text]),
    -- | Specifies a short summary of the referendum that is typically on the ballot below the title but above the text. This field is only populated for contests of type \'Referendum\'.
    referendumBrief :: (Core.Maybe Core.Text),
    -- | A statement in opposition to the referendum. It does not necessarily appear on the ballot. This field is only populated for contests of type \'Referendum\'.
    referendumConStatement :: (Core.Maybe Core.Text),
    -- | Specifies what effect abstaining (not voting) on the proposition will have (i.e. whether abstaining is considered a vote against it). This field is only populated for contests of type \'Referendum\'.
    referendumEffectOfAbstain :: (Core.Maybe Core.Text),
    -- | The threshold of votes that the referendum needs in order to pass, e.g. \"two-thirds\". This field is only populated for contests of type \'Referendum\'.
    referendumPassageThreshold :: (Core.Maybe Core.Text),
    -- | A statement in favor of the referendum. It does not necessarily appear on the ballot. This field is only populated for contests of type \'Referendum\'.
    referendumProStatement :: (Core.Maybe Core.Text),
    -- | A brief description of the referendum. This field is only populated for contests of type \'Referendum\'.
    referendumSubtitle :: (Core.Maybe Core.Text),
    -- | The full text of the referendum. This field is only populated for contests of type \'Referendum\'.
    referendumText :: (Core.Maybe Core.Text),
    -- | The title of the referendum (e.g. \'Proposition 42\'). This field is only populated for contests of type \'Referendum\'.
    referendumTitle :: (Core.Maybe Core.Text),
    -- | A link to the referendum. This field is only populated for contests of type \'Referendum\'.
    referendumUrl :: (Core.Maybe Core.Text),
    -- | The roles which this office fulfills.
    roles :: (Core.Maybe [Contest_RolesItem]),
    -- | A list of sources for this contest. If multiple sources are listed, the data has been aggregated from those sources.
    sources :: (Core.Maybe [Source]),
    -- | \"Yes\" or \"No\" depending on whether this a contest being held outside the normal election cycle.
    special :: (Core.Maybe Core.Text),
    -- | The type of contest. Usually this will be \'General\', \'Primary\', or \'Run-off\' for contests with candidates. For referenda this will be \'Referendum\'. For Retention contests this will typically be \'Retention\'.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Contest' with the minimum fields required to make a request.
newContest ::
  Contest
newContest =
  Contest
    { ballotPlacement = Core.Nothing,
      ballotTitle = Core.Nothing,
      candidates = Core.Nothing,
      district = Core.Nothing,
      electorateSpecifications = Core.Nothing,
      level = Core.Nothing,
      numberElected = Core.Nothing,
      numberVotingFor = Core.Nothing,
      office = Core.Nothing,
      primaryParties = Core.Nothing,
      primaryParty = Core.Nothing,
      referendumBallotResponses = Core.Nothing,
      referendumBrief = Core.Nothing,
      referendumConStatement = Core.Nothing,
      referendumEffectOfAbstain = Core.Nothing,
      referendumPassageThreshold = Core.Nothing,
      referendumProStatement = Core.Nothing,
      referendumSubtitle = Core.Nothing,
      referendumText = Core.Nothing,
      referendumTitle = Core.Nothing,
      referendumUrl = Core.Nothing,
      roles = Core.Nothing,
      sources = Core.Nothing,
      special = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Contest where
  parseJSON =
    Core.withObject
      "Contest"
      ( \o ->
          Contest
            Core.<$> ( o Core..:? "ballotPlacement"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "ballotTitle")
            Core.<*> (o Core..:? "candidates")
            Core.<*> (o Core..:? "district")
            Core.<*> (o Core..:? "electorateSpecifications")
            Core.<*> (o Core..:? "level")
            Core.<*> ( o Core..:? "numberElected"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "numberVotingFor"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "office")
            Core.<*> (o Core..:? "primaryParties")
            Core.<*> (o Core..:? "primaryParty")
            Core.<*> (o Core..:? "referendumBallotResponses")
            Core.<*> (o Core..:? "referendumBrief")
            Core.<*> (o Core..:? "referendumConStatement")
            Core.<*> (o Core..:? "referendumEffectOfAbstain")
            Core.<*> (o Core..:? "referendumPassageThreshold")
            Core.<*> (o Core..:? "referendumProStatement")
            Core.<*> (o Core..:? "referendumSubtitle")
            Core.<*> (o Core..:? "referendumText")
            Core.<*> (o Core..:? "referendumTitle")
            Core.<*> (o Core..:? "referendumUrl")
            Core.<*> (o Core..:? "roles")
            Core.<*> (o Core..:? "sources")
            Core.<*> (o Core..:? "special")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Contest where
  toJSON Contest {..} =
    Core.object
      ( Core.catMaybes
          [ ("ballotPlacement" Core..=) Core.. Core.AsText
              Core.<$> ballotPlacement,
            ("ballotTitle" Core..=) Core.<$> ballotTitle,
            ("candidates" Core..=) Core.<$> candidates,
            ("district" Core..=) Core.<$> district,
            ("electorateSpecifications" Core..=)
              Core.<$> electorateSpecifications,
            ("level" Core..=) Core.<$> level,
            ("numberElected" Core..=) Core.. Core.AsText
              Core.<$> numberElected,
            ("numberVotingFor" Core..=) Core.. Core.AsText
              Core.<$> numberVotingFor,
            ("office" Core..=) Core.<$> office,
            ("primaryParties" Core..=) Core.<$> primaryParties,
            ("primaryParty" Core..=) Core.<$> primaryParty,
            ("referendumBallotResponses" Core..=)
              Core.<$> referendumBallotResponses,
            ("referendumBrief" Core..=) Core.<$> referendumBrief,
            ("referendumConStatement" Core..=)
              Core.<$> referendumConStatement,
            ("referendumEffectOfAbstain" Core..=)
              Core.<$> referendumEffectOfAbstain,
            ("referendumPassageThreshold" Core..=)
              Core.<$> referendumPassageThreshold,
            ("referendumProStatement" Core..=)
              Core.<$> referendumProStatement,
            ("referendumSubtitle" Core..=)
              Core.<$> referendumSubtitle,
            ("referendumText" Core..=) Core.<$> referendumText,
            ("referendumTitle" Core..=) Core.<$> referendumTitle,
            ("referendumUrl" Core..=) Core.<$> referendumUrl,
            ("roles" Core..=) Core.<$> roles,
            ("sources" Core..=) Core.<$> sources,
            ("special" Core..=) Core.<$> special,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The result of a division search query.
--
-- /See:/ 'newDivisionSearchResponse' smart constructor.
data DivisionSearchResponse = DivisionSearchResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"civicinfo#divisionSearchResponse\".
    kind :: Core.Text,
    -- |
    results :: (Core.Maybe [DivisionSearchResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DivisionSearchResponse' with the minimum fields required to make a request.
newDivisionSearchResponse ::
  DivisionSearchResponse
newDivisionSearchResponse =
  DivisionSearchResponse
    { kind = "civicinfo#divisionSearchResponse",
      results = Core.Nothing
    }

instance Core.FromJSON DivisionSearchResponse where
  parseJSON =
    Core.withObject
      "DivisionSearchResponse"
      ( \o ->
          DivisionSearchResponse
            Core.<$> ( o Core..:? "kind"
                         Core..!= "civicinfo#divisionSearchResponse"
                     )
            Core.<*> (o Core..:? "results")
      )

instance Core.ToJSON DivisionSearchResponse where
  toJSON DivisionSearchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("results" Core..=) Core.<$> results
          ]
      )

-- | Represents a political geographic division that matches the requested query.
--
-- /See:/ 'newDivisionSearchResult' smart constructor.
data DivisionSearchResult = DivisionSearchResult
  { -- | Other Open Civic Data identifiers that refer to the same division -- for example, those that refer to other political divisions whose boundaries are defined to be coterminous with this one. For example, ocd-division\/country:us\/state:wy will include an alias of ocd-division\/country:us\/state:wy\/cd:1, since Wyoming has only one Congressional district.
    aliases :: (Core.Maybe [Core.Text]),
    -- | The name of the division.
    name :: (Core.Maybe Core.Text),
    -- | The unique Open Civic Data identifier for this division
    ocdId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DivisionSearchResult' with the minimum fields required to make a request.
newDivisionSearchResult ::
  DivisionSearchResult
newDivisionSearchResult =
  DivisionSearchResult
    { aliases = Core.Nothing,
      name = Core.Nothing,
      ocdId = Core.Nothing
    }

instance Core.FromJSON DivisionSearchResult where
  parseJSON =
    Core.withObject
      "DivisionSearchResult"
      ( \o ->
          DivisionSearchResult
            Core.<$> (o Core..:? "aliases")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "ocdId")
      )

instance Core.ToJSON DivisionSearchResult where
  toJSON DivisionSearchResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("aliases" Core..=) Core.<$> aliases,
            ("name" Core..=) Core.<$> name,
            ("ocdId" Core..=) Core.<$> ocdId
          ]
      )

-- | Information about the election that was queried.
--
-- /See:/ 'newElection' smart constructor.
data Election = Election
  { -- | Day of the election in YYYY-MM-DD format.
    electionDay :: (Core.Maybe Core.Text),
    -- | The unique ID of this election.
    id :: (Core.Maybe Core.Int64),
    -- | A displayable name for the election.
    name :: (Core.Maybe Core.Text),
    -- | The political division of the election. Represented as an OCD Division ID. Voters within these political jurisdictions are covered by this election. This is typically a state such as ocd-division\/country:us\/state:ca or for the midterms or general election the entire US (i.e. ocd-division\/country:us).
    ocdDivisionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Election' with the minimum fields required to make a request.
newElection ::
  Election
newElection =
  Election
    { electionDay = Core.Nothing,
      id = Core.Nothing,
      name = Core.Nothing,
      ocdDivisionId = Core.Nothing
    }

instance Core.FromJSON Election where
  parseJSON =
    Core.withObject
      "Election"
      ( \o ->
          Election
            Core.<$> (o Core..:? "electionDay")
            Core.<*> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "ocdDivisionId")
      )

instance Core.ToJSON Election where
  toJSON Election {..} =
    Core.object
      ( Core.catMaybes
          [ ("electionDay" Core..=) Core.<$> electionDay,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("ocdDivisionId" Core..=) Core.<$> ocdDivisionId
          ]
      )

-- | Information about individual election officials.
--
-- /See:/ 'newElectionOfficial' smart constructor.
data ElectionOfficial = ElectionOfficial
  { -- | The email address of the election official.
    emailAddress :: (Core.Maybe Core.Text),
    -- | The fax number of the election official.
    faxNumber :: (Core.Maybe Core.Text),
    -- | The full name of the election official.
    name :: (Core.Maybe Core.Text),
    -- | The office phone number of the election official.
    officePhoneNumber :: (Core.Maybe Core.Text),
    -- | The title of the election official.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ElectionOfficial' with the minimum fields required to make a request.
newElectionOfficial ::
  ElectionOfficial
newElectionOfficial =
  ElectionOfficial
    { emailAddress = Core.Nothing,
      faxNumber = Core.Nothing,
      name = Core.Nothing,
      officePhoneNumber = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON ElectionOfficial where
  parseJSON =
    Core.withObject
      "ElectionOfficial"
      ( \o ->
          ElectionOfficial
            Core.<$> (o Core..:? "emailAddress")
            Core.<*> (o Core..:? "faxNumber")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "officePhoneNumber")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON ElectionOfficial where
  toJSON ElectionOfficial {..} =
    Core.object
      ( Core.catMaybes
          [ ("emailAddress" Core..=) Core.<$> emailAddress,
            ("faxNumber" Core..=) Core.<$> faxNumber,
            ("name" Core..=) Core.<$> name,
            ("officePhoneNumber" Core..=)
              Core.<$> officePhoneNumber,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | The list of elections available for this version of the API.
--
-- /See:/ 'newElectionsQueryResponse' smart constructor.
data ElectionsQueryResponse = ElectionsQueryResponse
  { -- | A list of available elections
    elections :: (Core.Maybe [Election]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"civicinfo#electionsQueryResponse\".
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ElectionsQueryResponse' with the minimum fields required to make a request.
newElectionsQueryResponse ::
  ElectionsQueryResponse
newElectionsQueryResponse =
  ElectionsQueryResponse
    { elections = Core.Nothing,
      kind = "civicinfo#electionsQueryResponse"
    }

instance Core.FromJSON ElectionsQueryResponse where
  parseJSON =
    Core.withObject
      "ElectionsQueryResponse"
      ( \o ->
          ElectionsQueryResponse
            Core.<$> (o Core..:? "elections")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "civicinfo#electionsQueryResponse"
                     )
      )

instance Core.ToJSON ElectionsQueryResponse where
  toJSON ElectionsQueryResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("elections" Core..=) Core.<$> elections,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | Describes the geographic scope of a contest.
--
-- /See:/ 'newElectoralDistrict' smart constructor.
data ElectoralDistrict = ElectoralDistrict
  { -- | An identifier for this district, relative to its scope. For example, the 34th State Senate district would have id \"34\" and a scope of stateUpper.
    id :: (Core.Maybe Core.Text),
    -- | The name of the district.
    name :: (Core.Maybe Core.Text),
    -- | The geographic scope of this district. If unspecified the district\'s geography is not known. One of: national, statewide, congressional, stateUpper, stateLower, countywide, judicial, schoolBoard, cityWide, township, countyCouncil, cityCouncil, ward, special
    scope :: (Core.Maybe ElectoralDistrict_Scope)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ElectoralDistrict' with the minimum fields required to make a request.
newElectoralDistrict ::
  ElectoralDistrict
newElectoralDistrict =
  ElectoralDistrict
    { id = Core.Nothing,
      name = Core.Nothing,
      scope = Core.Nothing
    }

instance Core.FromJSON ElectoralDistrict where
  parseJSON =
    Core.withObject
      "ElectoralDistrict"
      ( \o ->
          ElectoralDistrict
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "scope")
      )

instance Core.ToJSON ElectoralDistrict where
  toJSON ElectoralDistrict {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("scope" Core..=) Core.<$> scope
          ]
      )

-- | A globally unique identifier associated with each feature. We use 128-bit identifiers so that we have lots of bits available to distinguish between features. The feature id currently consists of a 64-bit \"cell id\" that __sometimes__ corresponds to the approximate centroid of the feature, plus a 64-bit fingerprint of other identifying information. See more on each respective field in its comments. Feature ids are first assigned when the data is created in MapFacts. After initial creation of the feature, they are immutable. This means that the only properties that you should rely on are that they are unique, and that cell_ids often - but not always - preserve spatial locality. The degree of locality varies as the feature undergoes geometry changes, and should not in general be considered a firm guarantee of the location of any particular feature. In fact, some locationless features have randomized cell IDs! Consumers of FeatureProtos from Mapfacts are guaranteed that fprints in the id field of features will
-- be globally unique. Using the fprint allows consumers who don\'t need the spatial benefit of cell ids to uniquely identify features in a 64-bit address space. This property is not guaranteed for other sources of FeatureProtos.
--
-- /See:/ 'newFeatureIdProto' smart constructor.
data FeatureIdProto = FeatureIdProto
  { -- | The S2CellId corresponding to the approximate location of this feature as of when it was first created. This can be of variable accuracy, ranging from the exact centroid of the feature at creation, a very large S2 Cell, or even being completely randomized for locationless features. Cell ids have the nice property that they follow a space-filling curve over the surface of the earth. (See s2cellid.h for details.) WARNING: Clients should only use cell IDs to perform spatial locality optimizations. There is no strict guarantee that the cell ID of a feature is related to the current geometry of the feature in any way.
    cellId :: (Core.Maybe Core.Word64),
    -- | A 64-bit fingerprint used to identify features. Most clients should rely on MapFacts or OneRing to choose fingerprints. If creating new fprints, the strategy should be chosen so that the chance of collision is remote or non-existent, and the distribution should be reasonably uniform. For example, if the source data assigns unique ids to features, then a fingerprint of the provider name, version, and source id is sufficient.
    fprint :: (Core.Maybe Core.Word64),
    -- | A place for clients to attach arbitrary data to a feature ID. Never set in MapFacts.
    temporaryData :: (Core.Maybe MessageSet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FeatureIdProto' with the minimum fields required to make a request.
newFeatureIdProto ::
  FeatureIdProto
newFeatureIdProto =
  FeatureIdProto
    { cellId = Core.Nothing,
      fprint = Core.Nothing,
      temporaryData = Core.Nothing
    }

instance Core.FromJSON FeatureIdProto where
  parseJSON =
    Core.withObject
      "FeatureIdProto"
      ( \o ->
          FeatureIdProto
            Core.<$> ( o Core..:? "cellId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "fprint"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "temporaryData")
      )

instance Core.ToJSON FeatureIdProto where
  toJSON FeatureIdProto {..} =
    Core.object
      ( Core.catMaybes
          [ ("cellId" Core..=) Core.. Core.AsText
              Core.<$> cellId,
            ("fprint" Core..=) Core.. Core.AsText
              Core.<$> fprint,
            ("temporaryData" Core..=) Core.<$> temporaryData
          ]
      )

-- | Detailed summary of the result from geocoding an address
--
-- /See:/ 'newGeocodingSummary' smart constructor.
data GeocodingSummary = GeocodingSummary
  { -- | Represents the best estimate of whether or not the input address was fully understood and the address is correctly componentized. Mirrors the same-name field in geostore.staging.AddressLinkupScoringProto.
    addressUnderstood :: (Core.Maybe Core.Bool),
    -- | The ID of the FeatureProto returned by the geocoder
    featureId :: (Core.Maybe FeatureIdProto),
    -- | The feature type for the FeatureProto returned by the geocoder
    featureType :: (Core.Maybe GeocodingSummary_FeatureType),
    -- | Precision of the center point (lat\/long) of the geocoded FeatureProto
    positionPrecisionMeters :: (Core.Maybe Core.Double),
    -- | The query sent to the geocoder
    queryString :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeocodingSummary' with the minimum fields required to make a request.
newGeocodingSummary ::
  GeocodingSummary
newGeocodingSummary =
  GeocodingSummary
    { addressUnderstood = Core.Nothing,
      featureId = Core.Nothing,
      featureType = Core.Nothing,
      positionPrecisionMeters = Core.Nothing,
      queryString = Core.Nothing
    }

instance Core.FromJSON GeocodingSummary where
  parseJSON =
    Core.withObject
      "GeocodingSummary"
      ( \o ->
          GeocodingSummary
            Core.<$> (o Core..:? "addressUnderstood")
            Core.<*> (o Core..:? "featureId")
            Core.<*> (o Core..:? "featureType")
            Core.<*> (o Core..:? "positionPrecisionMeters")
            Core.<*> (o Core..:? "queryString")
      )

instance Core.ToJSON GeocodingSummary where
  toJSON GeocodingSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("addressUnderstood" Core..=)
              Core.<$> addressUnderstood,
            ("featureId" Core..=) Core.<$> featureId,
            ("featureType" Core..=) Core.<$> featureType,
            ("positionPrecisionMeters" Core..=)
              Core.<$> positionPrecisionMeters,
            ("queryString" Core..=) Core.<$> queryString
          ]
      )

-- | Describes a political geography.
--
-- /See:/ 'newGeographicDivision' smart constructor.
data GeographicDivision = GeographicDivision
  { -- | Any other valid OCD IDs that refer to the same division.\\n\\nBecause OCD IDs are meant to be human-readable and at least somewhat predictable, there are occasionally several identifiers for a single division. These identifiers are defined to be equivalent to one another, and one is always indicated as the primary identifier. The primary identifier will be returned in ocd_id above, and any other equivalent valid identifiers will be returned in this list.\\n\\nFor example, if this division\'s OCD ID is ocd-division\/country:us\/district:dc, this will contain ocd-division\/country:us\/state:dc.
    alsoKnownAs :: (Core.Maybe [Core.Text]),
    -- | The name of the division.
    name :: (Core.Maybe Core.Text),
    -- | List of indices in the offices array, one for each office elected from this division. Will only be present if includeOffices was true (or absent) in the request.
    officeIndices :: (Core.Maybe [Core.Word32])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeographicDivision' with the minimum fields required to make a request.
newGeographicDivision ::
  GeographicDivision
newGeographicDivision =
  GeographicDivision
    { alsoKnownAs = Core.Nothing,
      name = Core.Nothing,
      officeIndices = Core.Nothing
    }

instance Core.FromJSON GeographicDivision where
  parseJSON =
    Core.withObject
      "GeographicDivision"
      ( \o ->
          GeographicDivision
            Core.<$> (o Core..:? "alsoKnownAs")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "officeIndices")
      )

instance Core.ToJSON GeographicDivision where
  toJSON GeographicDivision {..} =
    Core.object
      ( Core.catMaybes
          [ ("alsoKnownAs" Core..=) Core.<$> alsoKnownAs,
            ("name" Core..=) Core.<$> name,
            ("officeIndices" Core..=) Core.<$> officeIndices
          ]
      )

-- | This is proto2\'s version of MessageSet.
--
-- /See:/ 'newMessageSet' smart constructor.
data MessageSet = MessageSet
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MessageSet' with the minimum fields required to make a request.
newMessageSet ::
  MessageSet
newMessageSet = MessageSet

instance Core.FromJSON MessageSet where
  parseJSON =
    Core.withObject
      "MessageSet"
      (\o -> Core.pure MessageSet)

instance Core.ToJSON MessageSet where
  toJSON = Core.const Core.emptyObject

-- | Information about an Office held by one or more Officials.
--
-- /See:/ 'newOffice' smart constructor.
data Office = Office
  { -- | The OCD ID of the division with which this office is associated.
    divisionId :: (Core.Maybe Core.Text),
    -- | The levels of government of which this office is part. There may be more than one in cases where a jurisdiction effectively acts at two different levels of government; for example, the mayor of the District of Columbia acts at \"locality\" level, but also effectively at both \"administrative-area-2\" and \"administrative-area-1\".
    levels :: (Core.Maybe [Office_LevelsItem]),
    -- | The human-readable name of the office.
    name :: (Core.Maybe Core.Text),
    -- | List of indices in the officials array of people who presently hold this office.
    officialIndices :: (Core.Maybe [Core.Word32]),
    -- | The roles which this office fulfills. Roles are not meant to be exhaustive, or to exactly specify the entire set of responsibilities of a given office, but are meant to be rough categories that are useful for general selection from or sorting of a list of offices.
    roles :: (Core.Maybe [Office_RolesItem]),
    -- | A list of sources for this office. If multiple sources are listed, the data has been aggregated from those sources.
    sources :: (Core.Maybe [Source])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Office' with the minimum fields required to make a request.
newOffice ::
  Office
newOffice =
  Office
    { divisionId = Core.Nothing,
      levels = Core.Nothing,
      name = Core.Nothing,
      officialIndices = Core.Nothing,
      roles = Core.Nothing,
      sources = Core.Nothing
    }

instance Core.FromJSON Office where
  parseJSON =
    Core.withObject
      "Office"
      ( \o ->
          Office
            Core.<$> (o Core..:? "divisionId")
            Core.<*> (o Core..:? "levels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "officialIndices")
            Core.<*> (o Core..:? "roles")
            Core.<*> (o Core..:? "sources")
      )

instance Core.ToJSON Office where
  toJSON Office {..} =
    Core.object
      ( Core.catMaybes
          [ ("divisionId" Core..=) Core.<$> divisionId,
            ("levels" Core..=) Core.<$> levels,
            ("name" Core..=) Core.<$> name,
            ("officialIndices" Core..=) Core.<$> officialIndices,
            ("roles" Core..=) Core.<$> roles,
            ("sources" Core..=) Core.<$> sources
          ]
      )

-- | Information about a person holding an elected office.
--
-- /See:/ 'newOfficial' smart constructor.
data Official = Official
  { -- | Addresses at which to contact the official.
    address :: (Core.Maybe [SimpleAddressType]),
    -- | A list of known (social) media channels for this official.
    channels :: (Core.Maybe [Channel]),
    -- | The direct email addresses for the official.
    emails :: (Core.Maybe [Core.Text]),
    -- | Detailed summary about the official\'s address\'s geocoding
    geocodingSummaries :: (Core.Maybe [GeocodingSummary]),
    -- | The official\'s name.
    name :: (Core.Maybe Core.Text),
    -- | The full name of the party the official belongs to.
    party :: (Core.Maybe Core.Text),
    -- | The official\'s public contact phone numbers.
    phones :: (Core.Maybe [Core.Text]),
    -- | A URL for a photo of the official.
    photoUrl :: (Core.Maybe Core.Text),
    -- | The official\'s public website URLs.
    urls :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Official' with the minimum fields required to make a request.
newOfficial ::
  Official
newOfficial =
  Official
    { address = Core.Nothing,
      channels = Core.Nothing,
      emails = Core.Nothing,
      geocodingSummaries = Core.Nothing,
      name = Core.Nothing,
      party = Core.Nothing,
      phones = Core.Nothing,
      photoUrl = Core.Nothing,
      urls = Core.Nothing
    }

instance Core.FromJSON Official where
  parseJSON =
    Core.withObject
      "Official"
      ( \o ->
          Official
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "channels")
            Core.<*> (o Core..:? "emails")
            Core.<*> (o Core..:? "geocodingSummaries")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "party")
            Core.<*> (o Core..:? "phones")
            Core.<*> (o Core..:? "photoUrl")
            Core.<*> (o Core..:? "urls")
      )

instance Core.ToJSON Official where
  toJSON Official {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("channels" Core..=) Core.<$> channels,
            ("emails" Core..=) Core.<$> emails,
            ("geocodingSummaries" Core..=)
              Core.<$> geocodingSummaries,
            ("name" Core..=) Core.<$> name,
            ("party" Core..=) Core.<$> party,
            ("phones" Core..=) Core.<$> phones,
            ("photoUrl" Core..=) Core.<$> photoUrl,
            ("urls" Core..=) Core.<$> urls
          ]
      )

-- | A location where a voter can vote. This may be an early vote site, an election day voting location, or a drop off location for a completed ballot.
--
-- /See:/ 'newPollingLocation' smart constructor.
data PollingLocation = PollingLocation
  { -- | The address of the location.
    address :: (Core.Maybe SimpleAddressType),
    -- | The last date that this early vote site or drop off location may be used. This field is not populated for polling locations.
    endDate :: (Core.Maybe Core.Text),
    -- | Latitude of the location, in degrees north of the equator. Note this field may not be available for some locations.
    latitude :: (Core.Maybe Core.Double),
    -- | Longitude of the location, in degrees east of the Prime Meridian. Note this field may not be available for some locations.
    longitude :: (Core.Maybe Core.Double),
    -- | The name of the early vote site or drop off location. This field is not populated for polling locations.
    name :: (Core.Maybe Core.Text),
    -- | Notes about this location (e.g. accessibility ramp or entrance to use).
    notes :: (Core.Maybe Core.Text),
    -- | A description of when this location is open.
    pollingHours :: (Core.Maybe Core.Text),
    -- | A list of sources for this location. If multiple sources are listed the data has been aggregated from those sources.
    sources :: (Core.Maybe [Source]),
    -- | The first date that this early vote site or drop off location may be used. This field is not populated for polling locations.
    startDate :: (Core.Maybe Core.Text),
    -- | The services provided by this early vote site or drop off location. This field is not populated for polling locations.
    voterServices :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PollingLocation' with the minimum fields required to make a request.
newPollingLocation ::
  PollingLocation
newPollingLocation =
  PollingLocation
    { address = Core.Nothing,
      endDate = Core.Nothing,
      latitude = Core.Nothing,
      longitude = Core.Nothing,
      name = Core.Nothing,
      notes = Core.Nothing,
      pollingHours = Core.Nothing,
      sources = Core.Nothing,
      startDate = Core.Nothing,
      voterServices = Core.Nothing
    }

instance Core.FromJSON PollingLocation where
  parseJSON =
    Core.withObject
      "PollingLocation"
      ( \o ->
          PollingLocation
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "endDate")
            Core.<*> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "notes")
            Core.<*> (o Core..:? "pollingHours")
            Core.<*> (o Core..:? "sources")
            Core.<*> (o Core..:? "startDate")
            Core.<*> (o Core..:? "voterServices")
      )

instance Core.ToJSON PollingLocation where
  toJSON PollingLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("endDate" Core..=) Core.<$> endDate,
            ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude,
            ("name" Core..=) Core.<$> name,
            ("notes" Core..=) Core.<$> notes,
            ("pollingHours" Core..=) Core.<$> pollingHours,
            ("sources" Core..=) Core.<$> sources,
            ("startDate" Core..=) Core.<$> startDate,
            ("voterServices" Core..=) Core.<$> voterServices
          ]
      )

--
-- /See:/ 'newRepresentativeInfoData' smart constructor.
data RepresentativeInfoData = RepresentativeInfoData
  { -- | A map of political geographic divisions that contain the requested address, keyed by the unique Open Civic Data identifier for this division.
    divisions :: (Core.Maybe RepresentativeInfoData_Divisions),
    -- | Elected offices referenced by the divisions listed above. Will only be present if includeOffices was true in the request.
    offices :: (Core.Maybe [Office]),
    -- | Officials holding the offices listed above. Will only be present if includeOffices was true in the request.
    officials :: (Core.Maybe [Official])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepresentativeInfoData' with the minimum fields required to make a request.
newRepresentativeInfoData ::
  RepresentativeInfoData
newRepresentativeInfoData =
  RepresentativeInfoData
    { divisions = Core.Nothing,
      offices = Core.Nothing,
      officials = Core.Nothing
    }

instance Core.FromJSON RepresentativeInfoData where
  parseJSON =
    Core.withObject
      "RepresentativeInfoData"
      ( \o ->
          RepresentativeInfoData
            Core.<$> (o Core..:? "divisions")
            Core.<*> (o Core..:? "offices")
            Core.<*> (o Core..:? "officials")
      )

instance Core.ToJSON RepresentativeInfoData where
  toJSON RepresentativeInfoData {..} =
    Core.object
      ( Core.catMaybes
          [ ("divisions" Core..=) Core.<$> divisions,
            ("offices" Core..=) Core.<$> offices,
            ("officials" Core..=) Core.<$> officials
          ]
      )

-- | A map of political geographic divisions that contain the requested address, keyed by the unique Open Civic Data identifier for this division.
--
-- /See:/ 'newRepresentativeInfoData_Divisions' smart constructor.
newtype RepresentativeInfoData_Divisions = RepresentativeInfoData_Divisions
  { -- |
    additional :: (Core.HashMap Core.Text GeographicDivision)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepresentativeInfoData_Divisions' with the minimum fields required to make a request.
newRepresentativeInfoData_Divisions ::
  -- |  See 'additional'.
  Core.HashMap Core.Text GeographicDivision ->
  RepresentativeInfoData_Divisions
newRepresentativeInfoData_Divisions additional =
  RepresentativeInfoData_Divisions {additional = additional}

instance
  Core.FromJSON
    RepresentativeInfoData_Divisions
  where
  parseJSON =
    Core.withObject
      "RepresentativeInfoData_Divisions"
      ( \o ->
          RepresentativeInfoData_Divisions
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RepresentativeInfoData_Divisions where
  toJSON RepresentativeInfoData_Divisions {..} =
    Core.toJSON additional

-- | The result of a representative info lookup query.
--
-- /See:/ 'newRepresentativeInfoResponse' smart constructor.
data RepresentativeInfoResponse = RepresentativeInfoResponse
  { -- | A map of political geographic divisions that contain the requested address, keyed by the unique Open Civic Data identifier for this division.
    divisions :: (Core.Maybe RepresentativeInfoResponse_Divisions),
    -- | Identifies what kind of resource this is. Value: the fixed string \"civicinfo#representativeInfoResponse\".
    kind :: Core.Text,
    -- | The normalized version of the requested address
    normalizedInput :: (Core.Maybe SimpleAddressType),
    -- | Elected offices referenced by the divisions listed above. Will only be present if includeOffices was true in the request.
    offices :: (Core.Maybe [Office]),
    -- | Officials holding the offices listed above. Will only be present if includeOffices was true in the request.
    officials :: (Core.Maybe [Official])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepresentativeInfoResponse' with the minimum fields required to make a request.
newRepresentativeInfoResponse ::
  RepresentativeInfoResponse
newRepresentativeInfoResponse =
  RepresentativeInfoResponse
    { divisions = Core.Nothing,
      kind = "civicinfo#representativeInfoResponse",
      normalizedInput = Core.Nothing,
      offices = Core.Nothing,
      officials = Core.Nothing
    }

instance Core.FromJSON RepresentativeInfoResponse where
  parseJSON =
    Core.withObject
      "RepresentativeInfoResponse"
      ( \o ->
          RepresentativeInfoResponse
            Core.<$> (o Core..:? "divisions")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "civicinfo#representativeInfoResponse"
                     )
            Core.<*> (o Core..:? "normalizedInput")
            Core.<*> (o Core..:? "offices")
            Core.<*> (o Core..:? "officials")
      )

instance Core.ToJSON RepresentativeInfoResponse where
  toJSON RepresentativeInfoResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("divisions" Core..=) Core.<$> divisions,
            Core.Just ("kind" Core..= kind),
            ("normalizedInput" Core..=) Core.<$> normalizedInput,
            ("offices" Core..=) Core.<$> offices,
            ("officials" Core..=) Core.<$> officials
          ]
      )

-- | A map of political geographic divisions that contain the requested address, keyed by the unique Open Civic Data identifier for this division.
--
-- /See:/ 'newRepresentativeInfoResponse_Divisions' smart constructor.
newtype RepresentativeInfoResponse_Divisions = RepresentativeInfoResponse_Divisions
  { -- |
    additional :: (Core.HashMap Core.Text GeographicDivision)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepresentativeInfoResponse_Divisions' with the minimum fields required to make a request.
newRepresentativeInfoResponse_Divisions ::
  -- |  See 'additional'.
  Core.HashMap Core.Text GeographicDivision ->
  RepresentativeInfoResponse_Divisions
newRepresentativeInfoResponse_Divisions additional =
  RepresentativeInfoResponse_Divisions {additional = additional}

instance
  Core.FromJSON
    RepresentativeInfoResponse_Divisions
  where
  parseJSON =
    Core.withObject
      "RepresentativeInfoResponse_Divisions"
      ( \o ->
          RepresentativeInfoResponse_Divisions
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    RepresentativeInfoResponse_Divisions
  where
  toJSON RepresentativeInfoResponse_Divisions {..} =
    Core.toJSON additional

-- | A simple representation of an address.
--
-- /See:/ 'newSimpleAddressType' smart constructor.
data SimpleAddressType = SimpleAddressType
  { -- | The city or town for the address.
    city :: (Core.Maybe Core.Text),
    -- | The street name and number of this address.
    line1 :: (Core.Maybe Core.Text),
    -- | The second line the address, if needed.
    line2 :: (Core.Maybe Core.Text),
    -- | The third line of the address, if needed.
    line3 :: (Core.Maybe Core.Text),
    -- | The name of the location.
    locationName :: (Core.Maybe Core.Text),
    -- | The US two letter state abbreviation of the address.
    state :: (Core.Maybe Core.Text),
    -- | The US Postal Zip Code of the address.
    zip :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SimpleAddressType' with the minimum fields required to make a request.
newSimpleAddressType ::
  SimpleAddressType
newSimpleAddressType =
  SimpleAddressType
    { city = Core.Nothing,
      line1 = Core.Nothing,
      line2 = Core.Nothing,
      line3 = Core.Nothing,
      locationName = Core.Nothing,
      state = Core.Nothing,
      zip = Core.Nothing
    }

instance Core.FromJSON SimpleAddressType where
  parseJSON =
    Core.withObject
      "SimpleAddressType"
      ( \o ->
          SimpleAddressType
            Core.<$> (o Core..:? "city")
            Core.<*> (o Core..:? "line1")
            Core.<*> (o Core..:? "line2")
            Core.<*> (o Core..:? "line3")
            Core.<*> (o Core..:? "locationName")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "zip")
      )

instance Core.ToJSON SimpleAddressType where
  toJSON SimpleAddressType {..} =
    Core.object
      ( Core.catMaybes
          [ ("city" Core..=) Core.<$> city,
            ("line1" Core..=) Core.<$> line1,
            ("line2" Core..=) Core.<$> line2,
            ("line3" Core..=) Core.<$> line3,
            ("locationName" Core..=) Core.<$> locationName,
            ("state" Core..=) Core.<$> state,
            ("zip" Core..=) Core.<$> zip
          ]
      )

-- | Contains information about the data source for the element containing it.
--
-- /See:/ 'newSource' smart constructor.
data Source = Source
  { -- | The name of the data source.
    name :: (Core.Maybe Core.Text),
    -- | Whether this data comes from an official government source.
    official :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
newSource ::
  Source
newSource = Source {name = Core.Nothing, official = Core.Nothing}

instance Core.FromJSON Source where
  parseJSON =
    Core.withObject
      "Source"
      ( \o ->
          Source
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "official")
      )

instance Core.ToJSON Source where
  toJSON Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("official" Core..=) Core.<$> official
          ]
      )

-- | The result of a voter info lookup query.
--
-- /See:/ 'newVoterInfoResponse' smart constructor.
data VoterInfoResponse = VoterInfoResponse
  { -- | Contests that will appear on the voter\'s ballot.
    contests :: (Core.Maybe [Contest]),
    -- | Locations where a voter is eligible to drop off a completed ballot. The voter must have received and completed a ballot prior to arriving at the location. The location may not have ballots available on the premises. These locations could be open on or before election day as indicated in the pollingHours field.
    dropOffLocations :: (Core.Maybe [PollingLocation]),
    -- | Locations where the voter is eligible to vote early, prior to election day.
    earlyVoteSites :: (Core.Maybe [PollingLocation]),
    -- | The election that was queried.
    election :: (Core.Maybe Election),
    -- | Identifies what kind of resource this is. Value: the fixed string \"civicinfo#voterInfoResponse\".
    kind :: Core.Text,
    -- | Specifies whether voters in the precinct vote only by mailing their ballots (with the possible option of dropping off their ballots as well).
    mailOnly :: (Core.Maybe Core.Bool),
    -- | The normalized version of the requested address
    normalizedInput :: (Core.Maybe SimpleAddressType),
    -- | When there are multiple elections for a voter address, the otherElections field is populated in the API response and there are two possibilities: 1. If the earliest election is not the intended election, specify the election ID of the desired election in a second API request using the electionId field. 2. If these elections occur on the same day, the API doesn?t return any polling location, contest, or election official information to ensure that an additional query is made. For user-facing applications, we recommend displaying these elections to the user to disambiguate. A second API request using the electionId field should be made for the election that is relevant to the user.
    otherElections :: (Core.Maybe [Election]),
    -- | Locations where the voter is eligible to vote on election day.
    pollingLocations :: (Core.Maybe [PollingLocation]),
    -- |
    precinctId :: (Core.Maybe Core.Text),
    -- | Local Election Information for the state that the voter votes in. For the US, there will only be one element in this array.
    state :: (Core.Maybe [AdministrationRegion])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VoterInfoResponse' with the minimum fields required to make a request.
newVoterInfoResponse ::
  VoterInfoResponse
newVoterInfoResponse =
  VoterInfoResponse
    { contests = Core.Nothing,
      dropOffLocations = Core.Nothing,
      earlyVoteSites = Core.Nothing,
      election = Core.Nothing,
      kind = "civicinfo#voterInfoResponse",
      mailOnly = Core.Nothing,
      normalizedInput = Core.Nothing,
      otherElections = Core.Nothing,
      pollingLocations = Core.Nothing,
      precinctId = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON VoterInfoResponse where
  parseJSON =
    Core.withObject
      "VoterInfoResponse"
      ( \o ->
          VoterInfoResponse
            Core.<$> (o Core..:? "contests")
            Core.<*> (o Core..:? "dropOffLocations")
            Core.<*> (o Core..:? "earlyVoteSites")
            Core.<*> (o Core..:? "election")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "civicinfo#voterInfoResponse"
                     )
            Core.<*> (o Core..:? "mailOnly")
            Core.<*> (o Core..:? "normalizedInput")
            Core.<*> (o Core..:? "otherElections")
            Core.<*> (o Core..:? "pollingLocations")
            Core.<*> (o Core..:? "precinctId")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON VoterInfoResponse where
  toJSON VoterInfoResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("contests" Core..=) Core.<$> contests,
            ("dropOffLocations" Core..=)
              Core.<$> dropOffLocations,
            ("earlyVoteSites" Core..=) Core.<$> earlyVoteSites,
            ("election" Core..=) Core.<$> election,
            Core.Just ("kind" Core..= kind),
            ("mailOnly" Core..=) Core.<$> mailOnly,
            ("normalizedInput" Core..=) Core.<$> normalizedInput,
            ("otherElections" Core..=) Core.<$> otherElections,
            ("pollingLocations" Core..=)
              Core.<$> pollingLocations,
            ("precinctId" Core..=) Core.<$> precinctId,
            ("state" Core..=) Core.<$> state
          ]
      )
