{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Coordinate.Jobs.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a job. Fields that are set in the job state will be updated.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.jobs.patch@.
module Network.Google.API.Coordinate.Jobs.Patch
    (
    -- * REST Resource
      JobsPatchAPI

    -- * Creating a Request
    , jobsPatch'
    , JobsPatch'

    -- * Request Lenses
    , jpQuotaUser
    , jpPrettyPrint
    , jpJobId
    , jpProgress
    , jpNote
    , jpUserIp
    , jpTeamId
    , jpCustomerPhoneNumber
    , jpCustomerName
    , jpAddress
    , jpAssignee
    , jpLat
    , jpKey
    , jpLng
    , jpTitle
    , jpOauthToken
    , jpFields
    , jpCustomField
    , jpAlt
    ) where

import           Network.Google.Maps.Coordinate.Types
import           Network.Google.Prelude

-- | A resource alias for coordinate.jobs.patch which the
-- 'JobsPatch'' request conforms to.
type JobsPatchAPI =
     "teams" :>
       Capture "teamId" Text :>
         "jobs" :>
           Capture "jobId" Word64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "progress" JobsPatch'Progress :>
                   QueryParam "note" Text :>
                     QueryParam "userIp" Text :>
                       QueryParam "customerPhoneNumber" Text :>
                         QueryParam "customerName" Text :>
                           QueryParam "address" Text :>
                             QueryParam "assignee" Text :>
                               QueryParam "lat" Double :>
                                 QueryParam "key" Text :>
                                   QueryParam "lng" Double :>
                                     QueryParam "title" Text :>
                                       QueryParam "oauth_token" Text :>
                                         QueryParam "fields" Text :>
                                           QueryParam "customField" Text :>
                                             QueryParam "alt" Alt :>
                                               Patch '[JSON] Job

-- | Updates a job. Fields that are set in the job state will be updated.
-- This method supports patch semantics.
--
-- /See:/ 'jobsPatch'' smart constructor.
data JobsPatch' = JobsPatch'
    { _jpQuotaUser           :: !(Maybe Text)
    , _jpPrettyPrint         :: !Bool
    , _jpJobId               :: !Word64
    , _jpProgress            :: !(Maybe JobsPatch'Progress)
    , _jpNote                :: !(Maybe Text)
    , _jpUserIp              :: !(Maybe Text)
    , _jpTeamId              :: !Text
    , _jpCustomerPhoneNumber :: !(Maybe Text)
    , _jpCustomerName        :: !(Maybe Text)
    , _jpAddress             :: !(Maybe Text)
    , _jpAssignee            :: !(Maybe Text)
    , _jpLat                 :: !(Maybe Double)
    , _jpKey                 :: !(Maybe Text)
    , _jpLng                 :: !(Maybe Double)
    , _jpTitle               :: !(Maybe Text)
    , _jpOauthToken          :: !(Maybe Text)
    , _jpFields              :: !(Maybe Text)
    , _jpCustomField         :: !(Maybe Text)
    , _jpAlt                 :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jpQuotaUser'
--
-- * 'jpPrettyPrint'
--
-- * 'jpJobId'
--
-- * 'jpProgress'
--
-- * 'jpNote'
--
-- * 'jpUserIp'
--
-- * 'jpTeamId'
--
-- * 'jpCustomerPhoneNumber'
--
-- * 'jpCustomerName'
--
-- * 'jpAddress'
--
-- * 'jpAssignee'
--
-- * 'jpLat'
--
-- * 'jpKey'
--
-- * 'jpLng'
--
-- * 'jpTitle'
--
-- * 'jpOauthToken'
--
-- * 'jpFields'
--
-- * 'jpCustomField'
--
-- * 'jpAlt'
jobsPatch'
    :: Word64 -- ^ 'jobId'
    -> Text -- ^ 'teamId'
    -> JobsPatch'
jobsPatch' pJpJobId_ pJpTeamId_ =
    JobsPatch'
    { _jpQuotaUser = Nothing
    , _jpPrettyPrint = True
    , _jpJobId = pJpJobId_
    , _jpProgress = Nothing
    , _jpNote = Nothing
    , _jpUserIp = Nothing
    , _jpTeamId = pJpTeamId_
    , _jpCustomerPhoneNumber = Nothing
    , _jpCustomerName = Nothing
    , _jpAddress = Nothing
    , _jpAssignee = Nothing
    , _jpLat = Nothing
    , _jpKey = Nothing
    , _jpLng = Nothing
    , _jpTitle = Nothing
    , _jpOauthToken = Nothing
    , _jpFields = Nothing
    , _jpCustomField = Nothing
    , _jpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
jpQuotaUser :: Lens' JobsPatch' (Maybe Text)
jpQuotaUser
  = lens _jpQuotaUser (\ s a -> s{_jpQuotaUser = a})

-- | Returns response with indentations and line breaks.
jpPrettyPrint :: Lens' JobsPatch' Bool
jpPrettyPrint
  = lens _jpPrettyPrint
      (\ s a -> s{_jpPrettyPrint = a})

-- | Job number
jpJobId :: Lens' JobsPatch' Word64
jpJobId = lens _jpJobId (\ s a -> s{_jpJobId = a})

-- | Job progress
jpProgress :: Lens' JobsPatch' (Maybe JobsPatch'Progress)
jpProgress
  = lens _jpProgress (\ s a -> s{_jpProgress = a})

-- | Job note as newline (Unix) separated string
jpNote :: Lens' JobsPatch' (Maybe Text)
jpNote = lens _jpNote (\ s a -> s{_jpNote = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jpUserIp :: Lens' JobsPatch' (Maybe Text)
jpUserIp = lens _jpUserIp (\ s a -> s{_jpUserIp = a})

-- | Team ID
jpTeamId :: Lens' JobsPatch' Text
jpTeamId = lens _jpTeamId (\ s a -> s{_jpTeamId = a})

-- | Customer phone number
jpCustomerPhoneNumber :: Lens' JobsPatch' (Maybe Text)
jpCustomerPhoneNumber
  = lens _jpCustomerPhoneNumber
      (\ s a -> s{_jpCustomerPhoneNumber = a})

-- | Customer name
jpCustomerName :: Lens' JobsPatch' (Maybe Text)
jpCustomerName
  = lens _jpCustomerName
      (\ s a -> s{_jpCustomerName = a})

-- | Job address as newline (Unix) separated string
jpAddress :: Lens' JobsPatch' (Maybe Text)
jpAddress
  = lens _jpAddress (\ s a -> s{_jpAddress = a})

-- | Assignee email address, or empty string to unassign.
jpAssignee :: Lens' JobsPatch' (Maybe Text)
jpAssignee
  = lens _jpAssignee (\ s a -> s{_jpAssignee = a})

-- | The latitude coordinate of this job\'s location.
jpLat :: Lens' JobsPatch' (Maybe Double)
jpLat = lens _jpLat (\ s a -> s{_jpLat = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jpKey :: Lens' JobsPatch' (Maybe Text)
jpKey = lens _jpKey (\ s a -> s{_jpKey = a})

-- | The longitude coordinate of this job\'s location.
jpLng :: Lens' JobsPatch' (Maybe Double)
jpLng = lens _jpLng (\ s a -> s{_jpLng = a})

-- | Job title
jpTitle :: Lens' JobsPatch' (Maybe Text)
jpTitle = lens _jpTitle (\ s a -> s{_jpTitle = a})

-- | OAuth 2.0 token for the current user.
jpOauthToken :: Lens' JobsPatch' (Maybe Text)
jpOauthToken
  = lens _jpOauthToken (\ s a -> s{_jpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
jpFields :: Lens' JobsPatch' (Maybe Text)
jpFields = lens _jpFields (\ s a -> s{_jpFields = a})

-- | Sets the value of custom fields. To set a custom field, pass the field
-- id (from \/team\/teamId\/custom_fields), a URL escaped \'=\' character,
-- and the desired value as a parameter. For example,
-- customField=12%3DAlice. Repeat the parameter for each custom field. Note
-- that \'=\' cannot appear in the parameter value. Specifying an invalid,
-- or inactive enum field will result in an error 500.
jpCustomField :: Lens' JobsPatch' (Maybe Text)
jpCustomField
  = lens _jpCustomField
      (\ s a -> s{_jpCustomField = a})

-- | Data format for the response.
jpAlt :: Lens' JobsPatch' Alt
jpAlt = lens _jpAlt (\ s a -> s{_jpAlt = a})

instance GoogleRequest JobsPatch' where
        type Rs JobsPatch' = Job
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u JobsPatch'{..}
          = go _jpQuotaUser (Just _jpPrettyPrint) _jpJobId
              _jpProgress
              _jpNote
              _jpUserIp
              _jpTeamId
              _jpCustomerPhoneNumber
              _jpCustomerName
              _jpAddress
              _jpAssignee
              _jpLat
              _jpKey
              _jpLng
              _jpTitle
              _jpOauthToken
              _jpFields
              _jpCustomField
              (Just _jpAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy JobsPatchAPI) r u
