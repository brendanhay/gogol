{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DNS.ResourceRecordSets.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Enumerate ResourceRecordSets that have been created but not yet deleted.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.resourceRecordSets.list@.
module Network.Google.API.DNS.ResourceRecordSets.List
    (
    -- * REST Resource
      ResourceRecordSetsListAPI

    -- * Creating a Request
    , resourceRecordSetsList'
    , ResourceRecordSetsList'

    -- * Request Lenses
    , rrslQuotaUser
    , rrslPrettyPrint
    , rrslProject
    , rrslUserIp
    , rrslKey
    , rrslName
    , rrslPageToken
    , rrslType
    , rrslOauthToken
    , rrslManagedZone
    , rrslMaxResults
    , rrslFields
    , rrslAlt
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for dns.resourceRecordSets.list which the
-- 'ResourceRecordSetsList'' request conforms to.
type ResourceRecordSetsListAPI =
     Capture "project" Text :>
       "managedZones" :>
         Capture "managedZone" Text :>
           "rrsets" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "name" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "type" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Int32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   Get '[JSON] ResourceRecordSetsListResponse

-- | Enumerate ResourceRecordSets that have been created but not yet deleted.
--
-- /See:/ 'resourceRecordSetsList'' smart constructor.
data ResourceRecordSetsList' = ResourceRecordSetsList'
    { _rrslQuotaUser   :: !(Maybe Text)
    , _rrslPrettyPrint :: !Bool
    , _rrslProject     :: !Text
    , _rrslUserIp      :: !(Maybe Text)
    , _rrslKey         :: !(Maybe Text)
    , _rrslName        :: !(Maybe Text)
    , _rrslPageToken   :: !(Maybe Text)
    , _rrslType        :: !(Maybe Text)
    , _rrslOauthToken  :: !(Maybe Text)
    , _rrslManagedZone :: !Text
    , _rrslMaxResults  :: !(Maybe Int32)
    , _rrslFields      :: !(Maybe Text)
    , _rrslAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceRecordSetsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrslQuotaUser'
--
-- * 'rrslPrettyPrint'
--
-- * 'rrslProject'
--
-- * 'rrslUserIp'
--
-- * 'rrslKey'
--
-- * 'rrslName'
--
-- * 'rrslPageToken'
--
-- * 'rrslType'
--
-- * 'rrslOauthToken'
--
-- * 'rrslManagedZone'
--
-- * 'rrslMaxResults'
--
-- * 'rrslFields'
--
-- * 'rrslAlt'
resourceRecordSetsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'managedZone'
    -> ResourceRecordSetsList'
resourceRecordSetsList' pRrslProject_ pRrslManagedZone_ =
    ResourceRecordSetsList'
    { _rrslQuotaUser = Nothing
    , _rrslPrettyPrint = True
    , _rrslProject = pRrslProject_
    , _rrslUserIp = Nothing
    , _rrslKey = Nothing
    , _rrslName = Nothing
    , _rrslPageToken = Nothing
    , _rrslType = Nothing
    , _rrslOauthToken = Nothing
    , _rrslManagedZone = pRrslManagedZone_
    , _rrslMaxResults = Nothing
    , _rrslFields = Nothing
    , _rrslAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rrslQuotaUser :: Lens' ResourceRecordSetsList' (Maybe Text)
rrslQuotaUser
  = lens _rrslQuotaUser
      (\ s a -> s{_rrslQuotaUser = a})

-- | Returns response with indentations and line breaks.
rrslPrettyPrint :: Lens' ResourceRecordSetsList' Bool
rrslPrettyPrint
  = lens _rrslPrettyPrint
      (\ s a -> s{_rrslPrettyPrint = a})

-- | Identifies the project addressed by this request.
rrslProject :: Lens' ResourceRecordSetsList' Text
rrslProject
  = lens _rrslProject (\ s a -> s{_rrslProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rrslUserIp :: Lens' ResourceRecordSetsList' (Maybe Text)
rrslUserIp
  = lens _rrslUserIp (\ s a -> s{_rrslUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrslKey :: Lens' ResourceRecordSetsList' (Maybe Text)
rrslKey = lens _rrslKey (\ s a -> s{_rrslKey = a})

-- | Restricts the list to return only records with this fully qualified
-- domain name.
rrslName :: Lens' ResourceRecordSetsList' (Maybe Text)
rrslName = lens _rrslName (\ s a -> s{_rrslName = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
rrslPageToken :: Lens' ResourceRecordSetsList' (Maybe Text)
rrslPageToken
  = lens _rrslPageToken
      (\ s a -> s{_rrslPageToken = a})

-- | Restricts the list to return only records of this type. If present, the
-- \"name\" parameter must also be present.
rrslType :: Lens' ResourceRecordSetsList' (Maybe Text)
rrslType = lens _rrslType (\ s a -> s{_rrslType = a})

-- | OAuth 2.0 token for the current user.
rrslOauthToken :: Lens' ResourceRecordSetsList' (Maybe Text)
rrslOauthToken
  = lens _rrslOauthToken
      (\ s a -> s{_rrslOauthToken = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
rrslManagedZone :: Lens' ResourceRecordSetsList' Text
rrslManagedZone
  = lens _rrslManagedZone
      (\ s a -> s{_rrslManagedZone = a})

-- | Optional. Maximum number of results to be returned. If unspecified, the
-- server will decide how many results to return.
rrslMaxResults :: Lens' ResourceRecordSetsList' (Maybe Int32)
rrslMaxResults
  = lens _rrslMaxResults
      (\ s a -> s{_rrslMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rrslFields :: Lens' ResourceRecordSetsList' (Maybe Text)
rrslFields
  = lens _rrslFields (\ s a -> s{_rrslFields = a})

-- | Data format for the response.
rrslAlt :: Lens' ResourceRecordSetsList' Alt
rrslAlt = lens _rrslAlt (\ s a -> s{_rrslAlt = a})

instance GoogleRequest ResourceRecordSetsList' where
        type Rs ResourceRecordSetsList' =
             ResourceRecordSetsListResponse
        request = requestWithRoute defReq dNSURL
        requestWithRoute r u ResourceRecordSetsList'{..}
          = go _rrslQuotaUser (Just _rrslPrettyPrint)
              _rrslProject
              _rrslUserIp
              _rrslKey
              _rrslName
              _rrslPageToken
              _rrslType
              _rrslOauthToken
              _rrslManagedZone
              _rrslMaxResults
              _rrslFields
              (Just _rrslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ResourceRecordSetsListAPI)
                      r
                      u
