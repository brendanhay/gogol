{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Coordinate.Jobs.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a job. Fields that are set in the job state will be updated.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @CoordinateJobsPatch@.
module Network.Google.Resource.Coordinate.Jobs.Patch
    (
    -- * REST Resource
      JobsPatchResource

    -- * Creating a Request
    , jobsPatch'
    , JobsPatch'

    -- * Request Lenses
    , jpQuotaUser
    , jpPrettyPrint
    , jpJobId
    , jpProgress
    , jpNote
    , jpUserIP
    , jpTeamId
    , jpCustomerPhoneNumber
    , jpCustomerName
    , jpAddress
    , jpAssignee
    , jpLat
    , jpKey
    , jpJob
    , jpLng
    , jpTitle
    , jpOAuthToken
    , jpFields
    , jpCustomField
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateJobsPatch@ which the
-- 'JobsPatch'' request conforms to.
type JobsPatchResource =
     "teams" :>
       Capture "teamId" Text :>
         "jobs" :>
           Capture "jobId" Word64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "progress" CoordinateJobsPatchProgress :>
                   QueryParam "note" Text :>
                     QueryParam "userIp" Text :>
                       QueryParam "customerPhoneNumber" Text :>
                         QueryParam "customerName" Text :>
                           QueryParam "address" Text :>
                             QueryParam "assignee" Text :>
                               QueryParam "lat" Double :>
                                 QueryParam "key" Key :>
                                   QueryParam "lng" Double :>
                                     QueryParam "title" Text :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "fields" Text :>
                                           QueryParams "customField" Text :>
                                             QueryParam "alt" AltJSON :>
                                               ReqBody '[JSON] Job :>
                                                 Patch '[JSON] Job

-- | Updates a job. Fields that are set in the job state will be updated.
-- This method supports patch semantics.
--
-- /See:/ 'jobsPatch'' smart constructor.
data JobsPatch' = JobsPatch'
    { _jpQuotaUser           :: !(Maybe Text)
    , _jpPrettyPrint         :: !Bool
    , _jpJobId               :: !Word64
    , _jpProgress            :: !(Maybe CoordinateJobsPatchProgress)
    , _jpNote                :: !(Maybe Text)
    , _jpUserIP              :: !(Maybe Text)
    , _jpTeamId              :: !Text
    , _jpCustomerPhoneNumber :: !(Maybe Text)
    , _jpCustomerName        :: !(Maybe Text)
    , _jpAddress             :: !(Maybe Text)
    , _jpAssignee            :: !(Maybe Text)
    , _jpLat                 :: !(Maybe Double)
    , _jpKey                 :: !(Maybe Key)
    , _jpJob                 :: !Job
    , _jpLng                 :: !(Maybe Double)
    , _jpTitle               :: !(Maybe Text)
    , _jpOAuthToken          :: !(Maybe OAuthToken)
    , _jpFields              :: !(Maybe Text)
    , _jpCustomField         :: !(Maybe Text)
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
-- * 'jpUserIP'
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
-- * 'jpJob'
--
-- * 'jpLng'
--
-- * 'jpTitle'
--
-- * 'jpOAuthToken'
--
-- * 'jpFields'
--
-- * 'jpCustomField'
jobsPatch'
    :: Word64 -- ^ 'jobId'
    -> Text -- ^ 'teamId'
    -> Job -- ^ 'Job'
    -> JobsPatch'
jobsPatch' pJpJobId_ pJpTeamId_ pJpJob_ =
    JobsPatch'
    { _jpQuotaUser = Nothing
    , _jpPrettyPrint = True
    , _jpJobId = pJpJobId_
    , _jpProgress = Nothing
    , _jpNote = Nothing
    , _jpUserIP = Nothing
    , _jpTeamId = pJpTeamId_
    , _jpCustomerPhoneNumber = Nothing
    , _jpCustomerName = Nothing
    , _jpAddress = Nothing
    , _jpAssignee = Nothing
    , _jpLat = Nothing
    , _jpKey = Nothing
    , _jpJob = pJpJob_
    , _jpLng = Nothing
    , _jpTitle = Nothing
    , _jpOAuthToken = Nothing
    , _jpFields = Nothing
    , _jpCustomField = Nothing
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
jpProgress :: Lens' JobsPatch' (Maybe CoordinateJobsPatchProgress)
jpProgress
  = lens _jpProgress (\ s a -> s{_jpProgress = a})

-- | Job note as newline (Unix) separated string
jpNote :: Lens' JobsPatch' (Maybe Text)
jpNote = lens _jpNote (\ s a -> s{_jpNote = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jpUserIP :: Lens' JobsPatch' (Maybe Text)
jpUserIP = lens _jpUserIP (\ s a -> s{_jpUserIP = a})

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
jpKey :: Lens' JobsPatch' (Maybe Key)
jpKey = lens _jpKey (\ s a -> s{_jpKey = a})

-- | Multipart request metadata.
jpJob :: Lens' JobsPatch' Job
jpJob = lens _jpJob (\ s a -> s{_jpJob = a})

-- | The longitude coordinate of this job\'s location.
jpLng :: Lens' JobsPatch' (Maybe Double)
jpLng = lens _jpLng (\ s a -> s{_jpLng = a})

-- | Job title
jpTitle :: Lens' JobsPatch' (Maybe Text)
jpTitle = lens _jpTitle (\ s a -> s{_jpTitle = a})

-- | OAuth 2.0 token for the current user.
jpOAuthToken :: Lens' JobsPatch' (Maybe OAuthToken)
jpOAuthToken
  = lens _jpOAuthToken (\ s a -> s{_jpOAuthToken = a})

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

instance GoogleAuth JobsPatch' where
        authKey = jpKey . _Just
        authToken = jpOAuthToken . _Just

instance GoogleRequest JobsPatch' where
        type Rs JobsPatch' = Job
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u JobsPatch'{..}
          = go _jpQuotaUser (Just _jpPrettyPrint) _jpJobId
              _jpProgress
              _jpNote
              _jpUserIP
              _jpTeamId
              _jpCustomerPhoneNumber
              _jpCustomerName
              _jpAddress
              _jpAssignee
              _jpLat
              _jpKey
              _jpLng
              _jpTitle
              _jpOAuthToken
              _jpFields
              _jpCustomField
              (Just AltJSON)
              _jpJob
          where go
                  = clientWithRoute (Proxy :: Proxy JobsPatchResource)
                      r
                      u
