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
    , mdlUserIP
    , mdlKey
    , mdlOAuthToken
    , mdlFields
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
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Metadata

-- | List the metadata for the dimensions available to this AdSense account.
--
-- /See:/ 'metadataDimensionsList'' smart constructor.
data MetadataDimensionsList' = MetadataDimensionsList'
    { _mdlQuotaUser   :: !(Maybe Text)
    , _mdlPrettyPrint :: !Bool
    , _mdlUserIP      :: !(Maybe Text)
    , _mdlKey         :: !(Maybe Key)
    , _mdlOAuthToken  :: !(Maybe OAuthToken)
    , _mdlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataDimensionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdlQuotaUser'
--
-- * 'mdlPrettyPrint'
--
-- * 'mdlUserIP'
--
-- * 'mdlKey'
--
-- * 'mdlOAuthToken'
--
-- * 'mdlFields'
metadataDimensionsList'
    :: MetadataDimensionsList'
metadataDimensionsList' =
    MetadataDimensionsList'
    { _mdlQuotaUser = Nothing
    , _mdlPrettyPrint = True
    , _mdlUserIP = Nothing
    , _mdlKey = Nothing
    , _mdlOAuthToken = Nothing
    , _mdlFields = Nothing
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
mdlUserIP :: Lens' MetadataDimensionsList' (Maybe Text)
mdlUserIP
  = lens _mdlUserIP (\ s a -> s{_mdlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdlKey :: Lens' MetadataDimensionsList' (Maybe Key)
mdlKey = lens _mdlKey (\ s a -> s{_mdlKey = a})

-- | OAuth 2.0 token for the current user.
mdlOAuthToken :: Lens' MetadataDimensionsList' (Maybe OAuthToken)
mdlOAuthToken
  = lens _mdlOAuthToken
      (\ s a -> s{_mdlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mdlFields :: Lens' MetadataDimensionsList' (Maybe Text)
mdlFields
  = lens _mdlFields (\ s a -> s{_mdlFields = a})

instance GoogleAuth MetadataDimensionsList' where
        authKey = mdlKey . _Just
        authToken = mdlOAuthToken . _Just

instance GoogleRequest MetadataDimensionsList' where
        type Rs MetadataDimensionsList' = Metadata
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u MetadataDimensionsList'{..}
          = go _mdlQuotaUser (Just _mdlPrettyPrint) _mdlUserIP
              _mdlFields
              _mdlKey
              _mdlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MetadataDimensionsListResource)
                      r
                      u
