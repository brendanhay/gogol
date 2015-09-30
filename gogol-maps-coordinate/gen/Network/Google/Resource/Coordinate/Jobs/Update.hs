{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Coordinate.Jobs.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a job. Fields that are set in the job state will be updated.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @CoordinateJobsUpdate@.
module Coordinate.Jobs.Update
    (
    -- * REST Resource
      JobsUpdateAPI

    -- * Creating a Request
    , jobsUpdate
    , JobsUpdate

    -- * Request Lenses
    , juQuotaUser
    , juPrettyPrint
    , juJobId
    , juProgress
    , juNote
    , juUserIp
    , juTeamId
    , juCustomerPhoneNumber
    , juCustomerName
    , juAddress
    , juAssignee
    , juLat
    , juKey
    , juLng
    , juTitle
    , juOauthToken
    , juFields
    , juCustomField
    , juAlt
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateJobsUpdate@ which the
-- 'JobsUpdate' request conforms to.
type JobsUpdateAPI =
     "teams" :>
       Capture "teamId" Text :>
         "jobs" :>
           Capture "jobId" Word64 :>
             QueryParam "progress" Text :>
               QueryParam "note" Text :>
                 QueryParam "customerPhoneNumber" Text :>
                   QueryParam "customerName" Text :>
                     QueryParam "address" Text :>
                       QueryParam "assignee" Text :>
                         QueryParam "lat" Double :>
                           QueryParam "lng" Double :>
                             QueryParam "title" Text :>
                               QueryParams "customField" Text :> Put '[JSON] Job

-- | Updates a job. Fields that are set in the job state will be updated.
--
-- /See:/ 'jobsUpdate' smart constructor.
data JobsUpdate = JobsUpdate
    { _juQuotaUser           :: !(Maybe Text)
    , _juPrettyPrint         :: !Bool
    , _juJobId               :: !Word64
    , _juProgress            :: !(Maybe Text)
    , _juNote                :: !(Maybe Text)
    , _juUserIp              :: !(Maybe Text)
    , _juTeamId              :: !Text
    , _juCustomerPhoneNumber :: !(Maybe Text)
    , _juCustomerName        :: !(Maybe Text)
    , _juAddress             :: !(Maybe Text)
    , _juAssignee            :: !(Maybe Text)
    , _juLat                 :: !(Maybe Double)
    , _juKey                 :: !(Maybe Text)
    , _juLng                 :: !(Maybe Double)
    , _juTitle               :: !(Maybe Text)
    , _juOauthToken          :: !(Maybe Text)
    , _juFields              :: !(Maybe Text)
    , _juCustomField         :: !(Maybe Text)
    , _juAlt                 :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'juQuotaUser'
--
-- * 'juPrettyPrint'
--
-- * 'juJobId'
--
-- * 'juProgress'
--
-- * 'juNote'
--
-- * 'juUserIp'
--
-- * 'juTeamId'
--
-- * 'juCustomerPhoneNumber'
--
-- * 'juCustomerName'
--
-- * 'juAddress'
--
-- * 'juAssignee'
--
-- * 'juLat'
--
-- * 'juKey'
--
-- * 'juLng'
--
-- * 'juTitle'
--
-- * 'juOauthToken'
--
-- * 'juFields'
--
-- * 'juCustomField'
--
-- * 'juAlt'
jobsUpdate
    :: Word64 -- ^ 'jobId'
    -> Text -- ^ 'teamId'
    -> JobsUpdate
jobsUpdate pJuJobId_ pJuTeamId_ =
    JobsUpdate
    { _juQuotaUser = Nothing
    , _juPrettyPrint = True
    , _juJobId = pJuJobId_
    , _juProgress = Nothing
    , _juNote = Nothing
    , _juUserIp = Nothing
    , _juTeamId = pJuTeamId_
    , _juCustomerPhoneNumber = Nothing
    , _juCustomerName = Nothing
    , _juAddress = Nothing
    , _juAssignee = Nothing
    , _juLat = Nothing
    , _juKey = Nothing
    , _juLng = Nothing
    , _juTitle = Nothing
    , _juOauthToken = Nothing
    , _juFields = Nothing
    , _juCustomField = Nothing
    , _juAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
juQuotaUser :: Lens' JobsUpdate' (Maybe Text)
juQuotaUser
  = lens _juQuotaUser (\ s a -> s{_juQuotaUser = a})

-- | Returns response with indentations and line breaks.
juPrettyPrint :: Lens' JobsUpdate' Bool
juPrettyPrint
  = lens _juPrettyPrint
      (\ s a -> s{_juPrettyPrint = a})

-- | Job number
juJobId :: Lens' JobsUpdate' Word64
juJobId = lens _juJobId (\ s a -> s{_juJobId = a})

-- | Job progress
juProgress :: Lens' JobsUpdate' (Maybe Text)
juProgress
  = lens _juProgress (\ s a -> s{_juProgress = a})

-- | Job note as newline (Unix) separated string
juNote :: Lens' JobsUpdate' (Maybe Text)
juNote = lens _juNote (\ s a -> s{_juNote = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
juUserIp :: Lens' JobsUpdate' (Maybe Text)
juUserIp = lens _juUserIp (\ s a -> s{_juUserIp = a})

-- | Team ID
juTeamId :: Lens' JobsUpdate' Text
juTeamId = lens _juTeamId (\ s a -> s{_juTeamId = a})

-- | Customer phone number
juCustomerPhoneNumber :: Lens' JobsUpdate' (Maybe Text)
juCustomerPhoneNumber
  = lens _juCustomerPhoneNumber
      (\ s a -> s{_juCustomerPhoneNumber = a})

-- | Customer name
juCustomerName :: Lens' JobsUpdate' (Maybe Text)
juCustomerName
  = lens _juCustomerName
      (\ s a -> s{_juCustomerName = a})

-- | Job address as newline (Unix) separated string
juAddress :: Lens' JobsUpdate' (Maybe Text)
juAddress
  = lens _juAddress (\ s a -> s{_juAddress = a})

-- | Assignee email address, or empty string to unassign.
juAssignee :: Lens' JobsUpdate' (Maybe Text)
juAssignee
  = lens _juAssignee (\ s a -> s{_juAssignee = a})

-- | The latitude coordinate of this job\'s location.
juLat :: Lens' JobsUpdate' (Maybe Double)
juLat = lens _juLat (\ s a -> s{_juLat = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
juKey :: Lens' JobsUpdate' (Maybe Text)
juKey = lens _juKey (\ s a -> s{_juKey = a})

-- | The longitude coordinate of this job\'s location.
juLng :: Lens' JobsUpdate' (Maybe Double)
juLng = lens _juLng (\ s a -> s{_juLng = a})

-- | Job title
juTitle :: Lens' JobsUpdate' (Maybe Text)
juTitle = lens _juTitle (\ s a -> s{_juTitle = a})

-- | OAuth 2.0 token for the current user.
juOauthToken :: Lens' JobsUpdate' (Maybe Text)
juOauthToken
  = lens _juOauthToken (\ s a -> s{_juOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
juFields :: Lens' JobsUpdate' (Maybe Text)
juFields = lens _juFields (\ s a -> s{_juFields = a})

-- | Sets the value of custom fields. To set a custom field, pass the field
-- id (from \/team\/teamId\/custom_fields), a URL escaped \'=\' character,
-- and the desired value as a parameter. For example,
-- customField=12%3DAlice. Repeat the parameter for each custom field. Note
-- that \'=\' cannot appear in the parameter value. Specifying an invalid,
-- or inactive enum field will result in an error 500.
juCustomField :: Lens' JobsUpdate' (Maybe Text)
juCustomField
  = lens _juCustomField
      (\ s a -> s{_juCustomField = a})

-- | Data format for the response.
juAlt :: Lens' JobsUpdate' Text
juAlt = lens _juAlt (\ s a -> s{_juAlt = a})

instance GoogleRequest JobsUpdate' where
        type Rs JobsUpdate' = Job
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u JobsUpdate{..}
          = go _juQuotaUser _juPrettyPrint _juJobId _juProgress
              _juNote
              _juUserIp
              _juTeamId
              _juCustomerPhoneNumber
              _juCustomerName
              _juAddress
              _juAssignee
              _juLat
              _juKey
              _juLng
              _juTitle
              _juOauthToken
              _juFields
              _juCustomField
              _juAlt
          where go
                  = clientWithRoute (Proxy :: Proxy JobsUpdateAPI) r u
