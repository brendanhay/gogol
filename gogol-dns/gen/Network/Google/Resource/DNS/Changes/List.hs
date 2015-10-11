{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DNS.Changes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Enumerate Changes to a ResourceRecordSet collection.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @DNSChangesList@.
module Network.Google.Resource.DNS.Changes.List
    (
    -- * REST Resource
      ChangesListResource

    -- * Creating a Request
    , changesList'
    , ChangesList'

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clProject
    , clUserIP
    , clSortOrder
    , clKey
    , clPageToken
    , clOAuthToken
    , clManagedZone
    , clMaxResults
    , clFields
    , clSortBy
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @DNSChangesList@ method which the
-- 'ChangesList'' request conforms to.
type ChangesListResource =
     Capture "project" Text :>
       "managedZones" :>
         Capture "managedZone" Text :>
           "changes" :>
             QueryParam "sortOrder" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "sortBy" ChangesListSortBy :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ChangesListResponse

-- | Enumerate Changes to a ResourceRecordSet collection.
--
-- /See:/ 'changesList'' smart constructor.
data ChangesList' = ChangesList'
    { _clQuotaUser   :: !(Maybe Text)
    , _clPrettyPrint :: !Bool
    , _clProject     :: !Text
    , _clUserIP      :: !(Maybe Text)
    , _clSortOrder   :: !(Maybe Text)
    , _clKey         :: !(Maybe AuthKey)
    , _clPageToken   :: !(Maybe Text)
    , _clOAuthToken  :: !(Maybe OAuthToken)
    , _clManagedZone :: !Text
    , _clMaxResults  :: !(Maybe Int32)
    , _clFields      :: !(Maybe Text)
    , _clSortBy      :: !ChangesListSortBy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clProject'
--
-- * 'clUserIP'
--
-- * 'clSortOrder'
--
-- * 'clKey'
--
-- * 'clPageToken'
--
-- * 'clOAuthToken'
--
-- * 'clManagedZone'
--
-- * 'clMaxResults'
--
-- * 'clFields'
--
-- * 'clSortBy'
changesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'managedZone'
    -> ChangesList'
changesList' pClProject_ pClManagedZone_ =
    ChangesList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clProject = pClProject_
    , _clUserIP = Nothing
    , _clSortOrder = Nothing
    , _clKey = Nothing
    , _clPageToken = Nothing
    , _clOAuthToken = Nothing
    , _clManagedZone = pClManagedZone_
    , _clMaxResults = Nothing
    , _clFields = Nothing
    , _clSortBy = ChangeSequence
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' ChangesList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' ChangesList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | Identifies the project addressed by this request.
clProject :: Lens' ChangesList' Text
clProject
  = lens _clProject (\ s a -> s{_clProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIP :: Lens' ChangesList' (Maybe Text)
clUserIP = lens _clUserIP (\ s a -> s{_clUserIP = a})

-- | Sorting order direction: \'ascending\' or \'descending\'.
clSortOrder :: Lens' ChangesList' (Maybe Text)
clSortOrder
  = lens _clSortOrder (\ s a -> s{_clSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' ChangesList' (Maybe AuthKey)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
clPageToken :: Lens' ChangesList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOAuthToken :: Lens' ChangesList' (Maybe OAuthToken)
clOAuthToken
  = lens _clOAuthToken (\ s a -> s{_clOAuthToken = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
clManagedZone :: Lens' ChangesList' Text
clManagedZone
  = lens _clManagedZone
      (\ s a -> s{_clManagedZone = a})

-- | Optional. Maximum number of results to be returned. If unspecified, the
-- server will decide how many results to return.
clMaxResults :: Lens' ChangesList' (Maybe Int32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' ChangesList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Sorting criterion. The only supported value is change sequence.
clSortBy :: Lens' ChangesList' ChangesListSortBy
clSortBy = lens _clSortBy (\ s a -> s{_clSortBy = a})

instance GoogleAuth ChangesList' where
        _AuthKey = clKey . _Just
        _AuthToken = clOAuthToken . _Just

instance GoogleRequest ChangesList' where
        type Rs ChangesList' = ChangesListResponse
        request = requestWith dNSRequest
        requestWith rq ChangesList'{..}
          = go _clProject _clManagedZone _clSortOrder
              _clPageToken
              _clMaxResults
              (Just _clSortBy)
              _clQuotaUser
              (Just _clPrettyPrint)
              _clUserIP
              _clFields
              _clKey
              _clOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ChangesListResource) rq
