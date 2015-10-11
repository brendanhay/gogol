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
-- Module      : Network.Google.Resource.PlusDomains.Circles.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a circle\'s description.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesUpdate@.
module Network.Google.Resource.PlusDomains.Circles.Update
    (
    -- * REST Resource
      CirclesUpdateResource

    -- * Creating a Request
    , circlesUpdate'
    , CirclesUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuUserIP
    , cuPayload
    , cuKey
    , cuCircleId
    , cuOAuthToken
    , cuFields
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesUpdate@ method which the
-- 'CirclesUpdate'' request conforms to.
type CirclesUpdateResource =
     "circles" :>
       Capture "circleId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Circle :> Put '[JSON] Circle

-- | Update a circle\'s description.
--
-- /See:/ 'circlesUpdate'' smart constructor.
data CirclesUpdate' = CirclesUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPrettyPrint :: !Bool
    , _cuUserIP      :: !(Maybe Text)
    , _cuPayload     :: !Circle
    , _cuKey         :: !(Maybe AuthKey)
    , _cuCircleId    :: !Text
    , _cuOAuthToken  :: !(Maybe OAuthToken)
    , _cuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIP'
--
-- * 'cuPayload'
--
-- * 'cuKey'
--
-- * 'cuCircleId'
--
-- * 'cuOAuthToken'
--
-- * 'cuFields'
circlesUpdate'
    :: Circle -- ^ 'payload'
    -> Text -- ^ 'circleId'
    -> CirclesUpdate'
circlesUpdate' pCuPayload_ pCuCircleId_ =
    CirclesUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUserIP = Nothing
    , _cuPayload = pCuPayload_
    , _cuKey = Nothing
    , _cuCircleId = pCuCircleId_
    , _cuOAuthToken = Nothing
    , _cuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CirclesUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CirclesUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIP :: Lens' CirclesUpdate' (Maybe Text)
cuUserIP = lens _cuUserIP (\ s a -> s{_cuUserIP = a})

-- | Multipart request metadata.
cuPayload :: Lens' CirclesUpdate' Circle
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CirclesUpdate' (Maybe AuthKey)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | The ID of the circle to update.
cuCircleId :: Lens' CirclesUpdate' Text
cuCircleId
  = lens _cuCircleId (\ s a -> s{_cuCircleId = a})

-- | OAuth 2.0 token for the current user.
cuOAuthToken :: Lens' CirclesUpdate' (Maybe OAuthToken)
cuOAuthToken
  = lens _cuOAuthToken (\ s a -> s{_cuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CirclesUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

instance GoogleAuth CirclesUpdate' where
        _AuthKey = cuKey . _Just
        _AuthToken = cuOAuthToken . _Just

instance GoogleRequest CirclesUpdate' where
        type Rs CirclesUpdate' = Circle
        request = requestWith plusDomainsRequest
        requestWith rq CirclesUpdate'{..}
          = go _cuCircleId _cuQuotaUser (Just _cuPrettyPrint)
              _cuUserIP
              _cuFields
              _cuKey
              _cuOAuthToken
              (Just AltJSON)
              _cuPayload
          where go
                  = clientBuild (Proxy :: Proxy CirclesUpdateResource)
                      rq
