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
-- Module      : Network.Google.Resource.AdSense.Metadata.Dimensions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the metadata for the dimensions available to this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseMetadataDimensionsList@.
module Network.Google.Resource.AdSense.Metadata.Dimensions.List
    (
    -- * REST Resource
      MetadataDimensionsListResource

    -- * Creating a Request
    , metadataDimensionsList'
    , MetadataDimensionsList'

    -- * Request Lenses
    , mdlQuotaUser
    , mdlPrettyPrint
    , mdlUserIp
    , mdlKey
    , mdlOauthToken
    , mdlFields
    , mdlAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseMetadataDimensionsList@ which the
-- 'MetadataDimensionsList'' request conforms to.
type MetadataDimensionsListResource =
     "metadata" :>
       "dimensions" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Metadata

-- | List the metadata for the dimensions available to this AdSense account.
--
-- /See:/ 'metadataDimensionsList'' smart constructor.
data MetadataDimensionsList' = MetadataDimensionsList'
    { _mdlQuotaUser   :: !(Maybe Text)
    , _mdlPrettyPrint :: !Bool
    , _mdlUserIp      :: !(Maybe Text)
    , _mdlKey         :: !(Maybe Text)
    , _mdlOauthToken  :: !(Maybe Text)
    , _mdlFields      :: !(Maybe Text)
    , _mdlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataDimensionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdlQuotaUser'
--
-- * 'mdlPrettyPrint'
--
-- * 'mdlUserIp'
--
-- * 'mdlKey'
--
-- * 'mdlOauthToken'
--
-- * 'mdlFields'
--
-- * 'mdlAlt'
metadataDimensionsList'
    :: MetadataDimensionsList'
metadataDimensionsList' =
    MetadataDimensionsList'
    { _mdlQuotaUser = Nothing
    , _mdlPrettyPrint = True
    , _mdlUserIp = Nothing
    , _mdlKey = Nothing
    , _mdlOauthToken = Nothing
    , _mdlFields = Nothing
    , _mdlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mdlQuotaUser :: Lens' MetadataDimensionsList' (Maybe Text)
mdlQuotaUser
  = lens _mdlQuotaUser (\ s a -> s{_mdlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mdlPrettyPrint :: Lens' MetadataDimensionsList' Bool
mdlPrettyPrint
  = lens _mdlPrettyPrint
      (\ s a -> s{_mdlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mdlUserIp :: Lens' MetadataDimensionsList' (Maybe Text)
mdlUserIp
  = lens _mdlUserIp (\ s a -> s{_mdlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdlKey :: Lens' MetadataDimensionsList' (Maybe Text)
mdlKey = lens _mdlKey (\ s a -> s{_mdlKey = a})

-- | OAuth 2.0 token for the current user.
mdlOauthToken :: Lens' MetadataDimensionsList' (Maybe Text)
mdlOauthToken
  = lens _mdlOauthToken
      (\ s a -> s{_mdlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mdlFields :: Lens' MetadataDimensionsList' (Maybe Text)
mdlFields
  = lens _mdlFields (\ s a -> s{_mdlFields = a})

-- | Data format for the response.
mdlAlt :: Lens' MetadataDimensionsList' Alt
mdlAlt = lens _mdlAlt (\ s a -> s{_mdlAlt = a})

instance GoogleRequest MetadataDimensionsList' where
        type Rs MetadataDimensionsList' = Metadata
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u MetadataDimensionsList'{..}
          = go _mdlQuotaUser (Just _mdlPrettyPrint) _mdlUserIp
              _mdlKey
              _mdlOauthToken
              _mdlFields
              (Just _mdlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MetadataDimensionsListResource)
                      r
                      u
