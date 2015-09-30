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
-- Module      : Network.Google.Resource.Storage.Buckets.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketsInsert@.
module Network.Google.Resource.Storage.Buckets.Insert
    (
    -- * REST Resource
      BucketsInsertResource

    -- * Creating a Request
    , bucketsInsert'
    , BucketsInsert'

    -- * Request Lenses
    , biQuotaUser
    , biPrettyPrint
    , biProject
    , biUserIp
    , biKey
    , biProjection
    , biOauthToken
    , biFields
    , biAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketsInsert@ which the
-- 'BucketsInsert'' request conforms to.
type BucketsInsertResource =
     "b" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "project" Text :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "projection"
                   StorageBucketsInsertProjection
                   :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Bucket

-- | Creates a new bucket.
--
-- /See:/ 'bucketsInsert'' smart constructor.
data BucketsInsert' = BucketsInsert'
    { _biQuotaUser   :: !(Maybe Text)
    , _biPrettyPrint :: !Bool
    , _biProject     :: !Text
    , _biUserIp      :: !(Maybe Text)
    , _biKey         :: !(Maybe Text)
    , _biProjection  :: !(Maybe StorageBucketsInsertProjection)
    , _biOauthToken  :: !(Maybe Text)
    , _biFields      :: !(Maybe Text)
    , _biAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'biQuotaUser'
--
-- * 'biPrettyPrint'
--
-- * 'biProject'
--
-- * 'biUserIp'
--
-- * 'biKey'
--
-- * 'biProjection'
--
-- * 'biOauthToken'
--
-- * 'biFields'
--
-- * 'biAlt'
bucketsInsert'
    :: Text -- ^ 'project'
    -> BucketsInsert'
bucketsInsert' pBiProject_ =
    BucketsInsert'
    { _biQuotaUser = Nothing
    , _biPrettyPrint = True
    , _biProject = pBiProject_
    , _biUserIp = Nothing
    , _biKey = Nothing
    , _biProjection = Nothing
    , _biOauthToken = Nothing
    , _biFields = Nothing
    , _biAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
biQuotaUser :: Lens' BucketsInsert' (Maybe Text)
biQuotaUser
  = lens _biQuotaUser (\ s a -> s{_biQuotaUser = a})

-- | Returns response with indentations and line breaks.
biPrettyPrint :: Lens' BucketsInsert' Bool
biPrettyPrint
  = lens _biPrettyPrint
      (\ s a -> s{_biPrettyPrint = a})

-- | A valid API project identifier.
biProject :: Lens' BucketsInsert' Text
biProject
  = lens _biProject (\ s a -> s{_biProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
biUserIp :: Lens' BucketsInsert' (Maybe Text)
biUserIp = lens _biUserIp (\ s a -> s{_biUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
biKey :: Lens' BucketsInsert' (Maybe Text)
biKey = lens _biKey (\ s a -> s{_biKey = a})

-- | Set of properties to return. Defaults to noAcl, unless the bucket
-- resource specifies acl or defaultObjectAcl properties, when it defaults
-- to full.
biProjection :: Lens' BucketsInsert' (Maybe StorageBucketsInsertProjection)
biProjection
  = lens _biProjection (\ s a -> s{_biProjection = a})

-- | OAuth 2.0 token for the current user.
biOauthToken :: Lens' BucketsInsert' (Maybe Text)
biOauthToken
  = lens _biOauthToken (\ s a -> s{_biOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
biFields :: Lens' BucketsInsert' (Maybe Text)
biFields = lens _biFields (\ s a -> s{_biFields = a})

-- | Data format for the response.
biAlt :: Lens' BucketsInsert' Alt
biAlt = lens _biAlt (\ s a -> s{_biAlt = a})

instance GoogleRequest BucketsInsert' where
        type Rs BucketsInsert' = Bucket
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketsInsert'{..}
          = go _biQuotaUser (Just _biPrettyPrint)
              (Just _biProject)
              _biUserIp
              _biKey
              _biProjection
              _biOauthToken
              _biFields
              (Just _biAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketsInsertResource)
                      r
                      u
