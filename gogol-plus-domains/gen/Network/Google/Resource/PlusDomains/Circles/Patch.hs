{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PlusDomains.Circles.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a circle\'s description. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesPatch@.
module Network.Google.Resource.PlusDomains.Circles.Patch
    (
    -- * REST Resource
      CirclesPatchResource

    -- * Creating a Request
    , circlesPatch'
    , CirclesPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIP
    , cpPayload
    , cpKey
    , cpCircleId
    , cpOAuthToken
    , cpFields
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesPatch@ which the
-- 'CirclesPatch'' request conforms to.
type CirclesPatchResource =
     "circles" :>
       Capture "circleId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Circle :> Patch '[JSON] Circle

-- | Update a circle\'s description. This method supports patch semantics.
--
-- /See:/ 'circlesPatch'' smart constructor.
data CirclesPatch' = CirclesPatch'
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIP      :: !(Maybe Text)
    , _cpPayload     :: !Circle
    , _cpKey         :: !(Maybe Key)
    , _cpCircleId    :: !Text
    , _cpOAuthToken  :: !(Maybe OAuthToken)
    , _cpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIP'
--
-- * 'cpPayload'
--
-- * 'cpKey'
--
-- * 'cpCircleId'
--
-- * 'cpOAuthToken'
--
-- * 'cpFields'
circlesPatch'
    :: Circle -- ^ 'payload'
    -> Text -- ^ 'circleId'
    -> CirclesPatch'
circlesPatch' pCpPayload_ pCpCircleId_ =
    CirclesPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIP = Nothing
    , _cpPayload = pCpPayload_
    , _cpKey = Nothing
    , _cpCircleId = pCpCircleId_
    , _cpOAuthToken = Nothing
    , _cpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' CirclesPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' CirclesPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIP :: Lens' CirclesPatch' (Maybe Text)
cpUserIP = lens _cpUserIP (\ s a -> s{_cpUserIP = a})

-- | Multipart request metadata.
cpPayload :: Lens' CirclesPatch' Circle
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CirclesPatch' (Maybe Key)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | The ID of the circle to update.
cpCircleId :: Lens' CirclesPatch' Text
cpCircleId
  = lens _cpCircleId (\ s a -> s{_cpCircleId = a})

-- | OAuth 2.0 token for the current user.
cpOAuthToken :: Lens' CirclesPatch' (Maybe OAuthToken)
cpOAuthToken
  = lens _cpOAuthToken (\ s a -> s{_cpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CirclesPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

instance GoogleAuth CirclesPatch' where
        authKey = cpKey . _Just
        authToken = cpOAuthToken . _Just

instance GoogleRequest CirclesPatch' where
        type Rs CirclesPatch' = Circle
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesPatch'{..}
          = go _cpCircleId _cpQuotaUser (Just _cpPrettyPrint)
              _cpUserIP
              _cpFields
              _cpKey
              _cpOAuthToken
              (Just AltJSON)
              _cpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CirclesPatchResource)
                      r
                      u
