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
-- Module      : Network.Google.Resource.Storage.Buckets.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of buckets for a given project.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketsList@.
module Network.Google.Resource.Storage.Buckets.List
    (
    -- * REST Resource
      BucketsListResource

    -- * Creating a Request
    , bucketsList'
    , BucketsList'

    -- * Request Lenses
    , blQuotaUser
    , blPrettyPrint
    , blProject
    , blUserIP
    , blKey
    , blProjection
    , blPageToken
    , blOAuthToken
    , blMaxResults
    , blFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketsList@ which the
-- 'BucketsList'' request conforms to.
type BucketsListResource =
     "b" :>
       QueryParam "project" Text :>
         QueryParam "projection" BucketsListProjection :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Buckets

-- | Retrieves a list of buckets for a given project.
--
-- /See:/ 'bucketsList'' smart constructor.
data BucketsList' = BucketsList'
    { _blQuotaUser   :: !(Maybe Text)
    , _blPrettyPrint :: !Bool
    , _blProject     :: !Text
    , _blUserIP      :: !(Maybe Text)
    , _blKey         :: !(Maybe AuthKey)
    , _blProjection  :: !(Maybe BucketsListProjection)
    , _blPageToken   :: !(Maybe Text)
    , _blOAuthToken  :: !(Maybe OAuthToken)
    , _blMaxResults  :: !(Maybe Word32)
    , _blFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blQuotaUser'
--
-- * 'blPrettyPrint'
--
-- * 'blProject'
--
-- * 'blUserIP'
--
-- * 'blKey'
--
-- * 'blProjection'
--
-- * 'blPageToken'
--
-- * 'blOAuthToken'
--
-- * 'blMaxResults'
--
-- * 'blFields'
bucketsList'
    :: Text -- ^ 'project'
    -> BucketsList'
bucketsList' pBlProject_ =
    BucketsList'
    { _blQuotaUser = Nothing
    , _blPrettyPrint = True
    , _blProject = pBlProject_
    , _blUserIP = Nothing
    , _blKey = Nothing
    , _blProjection = Nothing
    , _blPageToken = Nothing
    , _blOAuthToken = Nothing
    , _blMaxResults = Nothing
    , _blFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
blQuotaUser :: Lens' BucketsList' (Maybe Text)
blQuotaUser
  = lens _blQuotaUser (\ s a -> s{_blQuotaUser = a})

-- | Returns response with indentations and line breaks.
blPrettyPrint :: Lens' BucketsList' Bool
blPrettyPrint
  = lens _blPrettyPrint
      (\ s a -> s{_blPrettyPrint = a})

-- | A valid API project identifier.
blProject :: Lens' BucketsList' Text
blProject
  = lens _blProject (\ s a -> s{_blProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
blUserIP :: Lens' BucketsList' (Maybe Text)
blUserIP = lens _blUserIP (\ s a -> s{_blUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
blKey :: Lens' BucketsList' (Maybe AuthKey)
blKey = lens _blKey (\ s a -> s{_blKey = a})

-- | Set of properties to return. Defaults to noAcl.
blProjection :: Lens' BucketsList' (Maybe BucketsListProjection)
blProjection
  = lens _blProjection (\ s a -> s{_blProjection = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
blPageToken :: Lens' BucketsList' (Maybe Text)
blPageToken
  = lens _blPageToken (\ s a -> s{_blPageToken = a})

-- | OAuth 2.0 token for the current user.
blOAuthToken :: Lens' BucketsList' (Maybe OAuthToken)
blOAuthToken
  = lens _blOAuthToken (\ s a -> s{_blOAuthToken = a})

-- | Maximum number of buckets to return.
blMaxResults :: Lens' BucketsList' (Maybe Word32)
blMaxResults
  = lens _blMaxResults (\ s a -> s{_blMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
blFields :: Lens' BucketsList' (Maybe Text)
blFields = lens _blFields (\ s a -> s{_blFields = a})

instance GoogleAuth BucketsList' where
        authKey = blKey . _Just
        authToken = blOAuthToken . _Just

instance GoogleRequest BucketsList' where
        type Rs BucketsList' = Buckets
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketsList'{..}
          = go (Just _blProject) _blProjection _blPageToken
              _blMaxResults
              _blQuotaUser
              (Just _blPrettyPrint)
              _blUserIP
              _blFields
              _blKey
              _blOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketsListResource)
                      r
                      u
