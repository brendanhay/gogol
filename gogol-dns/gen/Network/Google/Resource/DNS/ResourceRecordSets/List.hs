{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DNS.ResourceRecordSets.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Enumerate ResourceRecordSets that have been created but not yet deleted.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @DNSResourceRecordSetsList@.
module Network.Google.Resource.DNS.ResourceRecordSets.List
    (
    -- * REST Resource
      ResourceRecordSetsListResource

    -- * Creating a Request
    , resourceRecordSetsList'
    , ResourceRecordSetsList'

    -- * Request Lenses
    , rrslQuotaUser
    , rrslPrettyPrint
    , rrslProject
    , rrslUserIP
    , rrslKey
    , rrslName
    , rrslPageToken
    , rrslType
    , rrslOAuthToken
    , rrslManagedZone
    , rrslMaxResults
    , rrslFields
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @DNSResourceRecordSetsList@ which the
-- 'ResourceRecordSetsList'' request conforms to.
type ResourceRecordSetsListResource =
     Capture "project" Text :>
       "managedZones" :>
         Capture "managedZone" Text :>
           "rrsets" :>
             QueryParam "name" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "type" Text :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ResourceRecordSetsListResponse

-- | Enumerate ResourceRecordSets that have been created but not yet deleted.
--
-- /See:/ 'resourceRecordSetsList'' smart constructor.
data ResourceRecordSetsList' = ResourceRecordSetsList'
    { _rrslQuotaUser   :: !(Maybe Text)
    , _rrslPrettyPrint :: !Bool
    , _rrslProject     :: !Text
    , _rrslUserIP      :: !(Maybe Text)
    , _rrslKey         :: !(Maybe Key)
    , _rrslName        :: !(Maybe Text)
    , _rrslPageToken   :: !(Maybe Text)
    , _rrslType        :: !(Maybe Text)
    , _rrslOAuthToken  :: !(Maybe OAuthToken)
    , _rrslManagedZone :: !Text
    , _rrslMaxResults  :: !(Maybe Int32)
    , _rrslFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rrslUserIP'
--
-- * 'rrslKey'
--
-- * 'rrslName'
--
-- * 'rrslPageToken'
--
-- * 'rrslType'
--
-- * 'rrslOAuthToken'
--
-- * 'rrslManagedZone'
--
-- * 'rrslMaxResults'
--
-- * 'rrslFields'
resourceRecordSetsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'managedZone'
    -> ResourceRecordSetsList'
resourceRecordSetsList' pRrslProject_ pRrslManagedZone_ =
    ResourceRecordSetsList'
    { _rrslQuotaUser = Nothing
    , _rrslPrettyPrint = True
    , _rrslProject = pRrslProject_
    , _rrslUserIP = Nothing
    , _rrslKey = Nothing
    , _rrslName = Nothing
    , _rrslPageToken = Nothing
    , _rrslType = Nothing
    , _rrslOAuthToken = Nothing
    , _rrslManagedZone = pRrslManagedZone_
    , _rrslMaxResults = Nothing
    , _rrslFields = Nothing
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
rrslUserIP :: Lens' ResourceRecordSetsList' (Maybe Text)
rrslUserIP
  = lens _rrslUserIP (\ s a -> s{_rrslUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrslKey :: Lens' ResourceRecordSetsList' (Maybe Key)
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
rrslOAuthToken :: Lens' ResourceRecordSetsList' (Maybe OAuthToken)
rrslOAuthToken
  = lens _rrslOAuthToken
      (\ s a -> s{_rrslOAuthToken = a})

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

instance GoogleAuth ResourceRecordSetsList' where
        authKey = rrslKey . _Just
        authToken = rrslOAuthToken . _Just

instance GoogleRequest ResourceRecordSetsList' where
        type Rs ResourceRecordSetsList' =
             ResourceRecordSetsListResponse
        request = requestWithRoute defReq dNSURL
        requestWithRoute r u ResourceRecordSetsList'{..}
          = go _rrslProject _rrslManagedZone _rrslName
              _rrslPageToken
              _rrslType
              _rrslMaxResults
              _rrslQuotaUser
              (Just _rrslPrettyPrint)
              _rrslUserIP
              _rrslFields
              _rrslKey
              _rrslOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ResourceRecordSetsListResource)
                      r
                      u
