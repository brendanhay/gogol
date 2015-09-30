{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PlusDomains.Circles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a circle.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesGet@.
module PlusDomains.Circles.Get
    (
    -- * REST Resource
      CirclesGetAPI

    -- * Creating a Request
    , circlesGet
    , CirclesGet

    -- * Request Lenses
    , cggQuotaUser
    , cggPrettyPrint
    , cggUserIp
    , cggKey
    , cggCircleId
    , cggOauthToken
    , cggFields
    , cggAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesGet@ which the
-- 'CirclesGet' request conforms to.
type CirclesGetAPI =
     "circles" :>
       Capture "circleId" Text :> Get '[JSON] Circle

-- | Get a circle.
--
-- /See:/ 'circlesGet' smart constructor.
data CirclesGet = CirclesGet
    { _cggQuotaUser   :: !(Maybe Text)
    , _cggPrettyPrint :: !Bool
    , _cggUserIp      :: !(Maybe Text)
    , _cggKey         :: !(Maybe Text)
    , _cggCircleId    :: !Text
    , _cggOauthToken  :: !(Maybe Text)
    , _cggFields      :: !(Maybe Text)
    , _cggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggQuotaUser'
--
-- * 'cggPrettyPrint'
--
-- * 'cggUserIp'
--
-- * 'cggKey'
--
-- * 'cggCircleId'
--
-- * 'cggOauthToken'
--
-- * 'cggFields'
--
-- * 'cggAlt'
circlesGet
    :: Text -- ^ 'circleId'
    -> CirclesGet
circlesGet pCggCircleId_ =
    CirclesGet
    { _cggQuotaUser = Nothing
    , _cggPrettyPrint = True
    , _cggUserIp = Nothing
    , _cggKey = Nothing
    , _cggCircleId = pCggCircleId_
    , _cggOauthToken = Nothing
    , _cggFields = Nothing
    , _cggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cggQuotaUser :: Lens' CirclesGet' (Maybe Text)
cggQuotaUser
  = lens _cggQuotaUser (\ s a -> s{_cggQuotaUser = a})

-- | Returns response with indentations and line breaks.
cggPrettyPrint :: Lens' CirclesGet' Bool
cggPrettyPrint
  = lens _cggPrettyPrint
      (\ s a -> s{_cggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cggUserIp :: Lens' CirclesGet' (Maybe Text)
cggUserIp
  = lens _cggUserIp (\ s a -> s{_cggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cggKey :: Lens' CirclesGet' (Maybe Text)
cggKey = lens _cggKey (\ s a -> s{_cggKey = a})

-- | The ID of the circle to get.
cggCircleId :: Lens' CirclesGet' Text
cggCircleId
  = lens _cggCircleId (\ s a -> s{_cggCircleId = a})

-- | OAuth 2.0 token for the current user.
cggOauthToken :: Lens' CirclesGet' (Maybe Text)
cggOauthToken
  = lens _cggOauthToken
      (\ s a -> s{_cggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cggFields :: Lens' CirclesGet' (Maybe Text)
cggFields
  = lens _cggFields (\ s a -> s{_cggFields = a})

-- | Data format for the response.
cggAlt :: Lens' CirclesGet' Text
cggAlt = lens _cggAlt (\ s a -> s{_cggAlt = a})

instance GoogleRequest CirclesGet' where
        type Rs CirclesGet' = Circle
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesGet{..}
          = go _cggQuotaUser _cggPrettyPrint _cggUserIp _cggKey
              _cggCircleId
              _cggOauthToken
              _cggFields
              _cggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CirclesGetAPI) r u
