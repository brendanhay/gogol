{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSense.Savedadstyles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a specific saved ad style from the user\'s account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.savedadstyles.get@.
module Network.Google.API.AdSense.Savedadstyles.Get
    (
    -- * REST Resource
      SavedadstylesGetAPI

    -- * Creating a Request
    , savedadstylesGet'
    , SavedadstylesGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgSavedAdStyleId
    , sgUserIp
    , sgKey
    , sgOauthToken
    , sgFields
    , sgAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for adsense.savedadstyles.get which the
-- 'SavedadstylesGet'' request conforms to.
type SavedadstylesGetAPI =
     "savedadstyles" :>
       Capture "savedAdStyleId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] SavedAdStyle

-- | Get a specific saved ad style from the user\'s account.
--
-- /See:/ 'savedadstylesGet'' smart constructor.
data SavedadstylesGet' = SavedadstylesGet'
    { _sgQuotaUser      :: !(Maybe Text)
    , _sgPrettyPrint    :: !Bool
    , _sgSavedAdStyleId :: !Text
    , _sgUserIp         :: !(Maybe Text)
    , _sgKey            :: !(Maybe Text)
    , _sgOauthToken     :: !(Maybe Text)
    , _sgFields         :: !(Maybe Text)
    , _sgAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'sgUserIp'
--
-- * 'sgKey'
--
-- * 'sgOauthToken'
--
-- * 'sgFields'
--
-- * 'sgAlt'
savedadstylesGet'
    :: Text -- ^ 'savedAdStyleId'
    -> SavedadstylesGet'
savedadstylesGet' pSgSavedAdStyleId_ =
    SavedadstylesGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgSavedAdStyleId = pSgSavedAdStyleId_
    , _sgUserIp = Nothing
    , _sgKey = Nothing
    , _sgOauthToken = Nothing
    , _sgFields = Nothing
    , _sgAlt = JSON
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
sgUserIp :: Lens' SavedadstylesGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SavedadstylesGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' SavedadstylesGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SavedadstylesGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | Data format for the response.
sgAlt :: Lens' SavedadstylesGet' Alt
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest SavedadstylesGet' where
        type Rs SavedadstylesGet' = SavedAdStyle
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u SavedadstylesGet'{..}
          = go _sgQuotaUser (Just _sgPrettyPrint)
              _sgSavedAdStyleId
              _sgUserIp
              _sgKey
              _sgOauthToken
              _sgFields
              (Just _sgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SavedadstylesGetAPI)
                      r
                      u
