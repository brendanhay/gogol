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
-- Module      : Network.Google.Resource.PlusDomains.Circles.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new circle for the authenticated user.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesInsert@.
module Network.Google.Resource.PlusDomains.Circles.Insert
    (
    -- * REST Resource
      CirclesInsertResource

    -- * Creating a Request
    , circlesInsert'
    , CirclesInsert'

    -- * Request Lenses
    , cirQuotaUser
    , cirPrettyPrint
    , cirUserIp
    , cirUserId
    , cirKey
    , cirOauthToken
    , cirFields
    , cirAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesInsert@ which the
-- 'CirclesInsert'' request conforms to.
type CirclesInsertResource =
     "people" :>
       Capture "userId" Text :>
         "circles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Circle

-- | Create a new circle for the authenticated user.
--
-- /See:/ 'circlesInsert'' smart constructor.
data CirclesInsert' = CirclesInsert'
    { _cirQuotaUser   :: !(Maybe Text)
    , _cirPrettyPrint :: !Bool
    , _cirUserIp      :: !(Maybe Text)
    , _cirUserId      :: !Text
    , _cirKey         :: !(Maybe Text)
    , _cirOauthToken  :: !(Maybe Text)
    , _cirFields      :: !(Maybe Text)
    , _cirAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirQuotaUser'
--
-- * 'cirPrettyPrint'
--
-- * 'cirUserIp'
--
-- * 'cirUserId'
--
-- * 'cirKey'
--
-- * 'cirOauthToken'
--
-- * 'cirFields'
--
-- * 'cirAlt'
circlesInsert'
    :: Text -- ^ 'userId'
    -> CirclesInsert'
circlesInsert' pCirUserId_ =
    CirclesInsert'
    { _cirQuotaUser = Nothing
    , _cirPrettyPrint = True
    , _cirUserIp = Nothing
    , _cirUserId = pCirUserId_
    , _cirKey = Nothing
    , _cirOauthToken = Nothing
    , _cirFields = Nothing
    , _cirAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cirQuotaUser :: Lens' CirclesInsert' (Maybe Text)
cirQuotaUser
  = lens _cirQuotaUser (\ s a -> s{_cirQuotaUser = a})

-- | Returns response with indentations and line breaks.
cirPrettyPrint :: Lens' CirclesInsert' Bool
cirPrettyPrint
  = lens _cirPrettyPrint
      (\ s a -> s{_cirPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cirUserIp :: Lens' CirclesInsert' (Maybe Text)
cirUserIp
  = lens _cirUserIp (\ s a -> s{_cirUserIp = a})

-- | The ID of the user to create the circle on behalf of. The value \"me\"
-- can be used to indicate the authenticated user.
cirUserId :: Lens' CirclesInsert' Text
cirUserId
  = lens _cirUserId (\ s a -> s{_cirUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cirKey :: Lens' CirclesInsert' (Maybe Text)
cirKey = lens _cirKey (\ s a -> s{_cirKey = a})

-- | OAuth 2.0 token for the current user.
cirOauthToken :: Lens' CirclesInsert' (Maybe Text)
cirOauthToken
  = lens _cirOauthToken
      (\ s a -> s{_cirOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cirFields :: Lens' CirclesInsert' (Maybe Text)
cirFields
  = lens _cirFields (\ s a -> s{_cirFields = a})

-- | Data format for the response.
cirAlt :: Lens' CirclesInsert' Alt
cirAlt = lens _cirAlt (\ s a -> s{_cirAlt = a})

instance GoogleRequest CirclesInsert' where
        type Rs CirclesInsert' = Circle
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesInsert'{..}
          = go _cirQuotaUser (Just _cirPrettyPrint) _cirUserIp
              _cirUserId
              _cirKey
              _cirOauthToken
              _cirFields
              (Just _cirAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CirclesInsertResource)
                      r
                      u
