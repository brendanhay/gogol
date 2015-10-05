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
-- Module      : Network.Google.Resource.AdSense.Savedadstyles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a specific saved ad style from the user\'s account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseSavedadstylesGet@.
module Network.Google.Resource.AdSense.Savedadstyles.Get
    (
    -- * REST Resource
      SavedadstylesGetResource

    -- * Creating a Request
    , savedadstylesGet'
    , SavedadstylesGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgSavedAdStyleId
    , sgUserIP
    , sgKey
    , sgOAuthToken
    , sgFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseSavedadstylesGet@ which the
-- 'SavedadstylesGet'' request conforms to.
type SavedadstylesGetResource =
     "savedadstyles" :>
       Capture "savedAdStyleId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] SavedAdStyle

-- | Get a specific saved ad style from the user\'s account.
--
-- /See:/ 'savedadstylesGet'' smart constructor.
data SavedadstylesGet' = SavedadstylesGet'
    { _sgQuotaUser      :: !(Maybe Text)
    , _sgPrettyPrint    :: !Bool
    , _sgSavedAdStyleId :: !Text
    , _sgUserIP         :: !(Maybe Text)
    , _sgKey            :: !(Maybe AuthKey)
    , _sgOAuthToken     :: !(Maybe OAuthToken)
    , _sgFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedadstylesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgSavedAdStyleId'
--
-- * 'sgUserIP'
--
-- * 'sgKey'
--
-- * 'sgOAuthToken'
--
-- * 'sgFields'
savedadstylesGet'
    :: Text -- ^ 'savedAdStyleId'
    -> SavedadstylesGet'
savedadstylesGet' pSgSavedAdStyleId_ =
    SavedadstylesGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgSavedAdStyleId = pSgSavedAdStyleId_
    , _sgUserIP = Nothing
    , _sgKey = Nothing
    , _sgOAuthToken = Nothing
    , _sgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' SavedadstylesGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' SavedadstylesGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | Saved ad style to retrieve.
sgSavedAdStyleId :: Lens' SavedadstylesGet' Text
sgSavedAdStyleId
  = lens _sgSavedAdStyleId
      (\ s a -> s{_sgSavedAdStyleId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIP :: Lens' SavedadstylesGet' (Maybe Text)
sgUserIP = lens _sgUserIP (\ s a -> s{_sgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SavedadstylesGet' (Maybe AuthKey)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOAuthToken :: Lens' SavedadstylesGet' (Maybe OAuthToken)
sgOAuthToken
  = lens _sgOAuthToken (\ s a -> s{_sgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SavedadstylesGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

instance GoogleAuth SavedadstylesGet' where
        authKey = sgKey . _Just
        authToken = sgOAuthToken . _Just

instance GoogleRequest SavedadstylesGet' where
        type Rs SavedadstylesGet' = SavedAdStyle
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u SavedadstylesGet'{..}
          = go _sgSavedAdStyleId _sgQuotaUser
              (Just _sgPrettyPrint)
              _sgUserIP
              _sgFields
              _sgKey
              _sgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SavedadstylesGetResource)
                      r
                      u
