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
    , cirUserIP
    , cirPayload
    , cirUserId
    , cirKey
    , cirOAuthToken
    , cirFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Circle :> Post '[JSON] Circle

-- | Create a new circle for the authenticated user.
--
-- /See:/ 'circlesInsert'' smart constructor.
data CirclesInsert' = CirclesInsert'
    { _cirQuotaUser   :: !(Maybe Text)
    , _cirPrettyPrint :: !Bool
    , _cirUserIP      :: !(Maybe Text)
    , _cirPayload     :: !Circle
    , _cirUserId      :: !Text
    , _cirKey         :: !(Maybe AuthKey)
    , _cirOAuthToken  :: !(Maybe OAuthToken)
    , _cirFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirQuotaUser'
--
-- * 'cirPrettyPrint'
--
-- * 'cirUserIP'
--
-- * 'cirPayload'
--
-- * 'cirUserId'
--
-- * 'cirKey'
--
-- * 'cirOAuthToken'
--
-- * 'cirFields'
circlesInsert'
    :: Circle -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> CirclesInsert'
circlesInsert' pCirPayload_ pCirUserId_ =
    CirclesInsert'
    { _cirQuotaUser = Nothing
    , _cirPrettyPrint = True
    , _cirUserIP = Nothing
    , _cirPayload = pCirPayload_
    , _cirUserId = pCirUserId_
    , _cirKey = Nothing
    , _cirOAuthToken = Nothing
    , _cirFields = Nothing
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
cirUserIP :: Lens' CirclesInsert' (Maybe Text)
cirUserIP
  = lens _cirUserIP (\ s a -> s{_cirUserIP = a})

-- | Multipart request metadata.
cirPayload :: Lens' CirclesInsert' Circle
cirPayload
  = lens _cirPayload (\ s a -> s{_cirPayload = a})

-- | The ID of the user to create the circle on behalf of. The value \"me\"
-- can be used to indicate the authenticated user.
cirUserId :: Lens' CirclesInsert' Text
cirUserId
  = lens _cirUserId (\ s a -> s{_cirUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cirKey :: Lens' CirclesInsert' (Maybe AuthKey)
cirKey = lens _cirKey (\ s a -> s{_cirKey = a})

-- | OAuth 2.0 token for the current user.
cirOAuthToken :: Lens' CirclesInsert' (Maybe OAuthToken)
cirOAuthToken
  = lens _cirOAuthToken
      (\ s a -> s{_cirOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cirFields :: Lens' CirclesInsert' (Maybe Text)
cirFields
  = lens _cirFields (\ s a -> s{_cirFields = a})

instance GoogleAuth CirclesInsert' where
        authKey = cirKey . _Just
        authToken = cirOAuthToken . _Just

instance GoogleRequest CirclesInsert' where
        type Rs CirclesInsert' = Circle
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesInsert'{..}
          = go _cirUserId _cirQuotaUser (Just _cirPrettyPrint)
              _cirUserIP
              _cirFields
              _cirKey
              _cirOAuthToken
              (Just AltJSON)
              _cirPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CirclesInsertResource)
                      r
                      u
