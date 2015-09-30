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
-- Module      : Network.Google.Resource.DoubleClickSearch.Conversion.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a batch of conversions in DoubleClick Search.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleclicksearchConversionUpdate@.
module Network.Google.Resource.DoubleClickSearch.Conversion.Update
    (
    -- * REST Resource
      ConversionUpdateResource

    -- * Creating a Request
    , conversionUpdate'
    , ConversionUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuUserIp
    , cuKey
    , cuOauthToken
    , cuFields
    , cuAlt
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleclicksearchConversionUpdate@ which the
-- 'ConversionUpdate'' request conforms to.
type ConversionUpdateResource =
     "conversion" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Put '[JSON] ConversionList

-- | Updates a batch of conversions in DoubleClick Search.
--
-- /See:/ 'conversionUpdate'' smart constructor.
data ConversionUpdate' = ConversionUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPrettyPrint :: !Bool
    , _cuUserIp      :: !(Maybe Text)
    , _cuKey         :: !(Maybe Text)
    , _cuOauthToken  :: !(Maybe Text)
    , _cuFields      :: !(Maybe Text)
    , _cuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConversionUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIp'
--
-- * 'cuKey'
--
-- * 'cuOauthToken'
--
-- * 'cuFields'
--
-- * 'cuAlt'
conversionUpdate'
    :: ConversionUpdate'
conversionUpdate' =
    ConversionUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUserIp = Nothing
    , _cuKey = Nothing
    , _cuOauthToken = Nothing
    , _cuFields = Nothing
    , _cuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' ConversionUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' ConversionUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIp :: Lens' ConversionUpdate' (Maybe Text)
cuUserIp = lens _cuUserIp (\ s a -> s{_cuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' ConversionUpdate' (Maybe Text)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | OAuth 2.0 token for the current user.
cuOauthToken :: Lens' ConversionUpdate' (Maybe Text)
cuOauthToken
  = lens _cuOauthToken (\ s a -> s{_cuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' ConversionUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

-- | Data format for the response.
cuAlt :: Lens' ConversionUpdate' Alt
cuAlt = lens _cuAlt (\ s a -> s{_cuAlt = a})

instance GoogleRequest ConversionUpdate' where
        type Rs ConversionUpdate' = ConversionList
        request
          = requestWithRoute defReq doubleClickSearchURL
        requestWithRoute r u ConversionUpdate'{..}
          = go _cuQuotaUser (Just _cuPrettyPrint) _cuUserIp
              _cuKey
              _cuOauthToken
              _cuFields
              (Just _cuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ConversionUpdateResource)
                      r
                      u
