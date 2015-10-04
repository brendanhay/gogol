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
-- Module      : Network.Google.Resource.Compute.Zones.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified zone resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeZonesGet@.
module Network.Google.Resource.Compute.Zones.Get
    (
    -- * REST Resource
      ZonesGetResource

    -- * Creating a Request
    , zonesGet'
    , ZonesGet'

    -- * Request Lenses
    , zgQuotaUser
    , zgPrettyPrint
    , zgProject
    , zgUserIP
    , zgZone
    , zgKey
    , zgOAuthToken
    , zgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeZonesGet@ which the
-- 'ZonesGet'' request conforms to.
type ZonesGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Zone

-- | Returns the specified zone resource.
--
-- /See:/ 'zonesGet'' smart constructor.
data ZonesGet' = ZonesGet'
    { _zgQuotaUser   :: !(Maybe Text)
    , _zgPrettyPrint :: !Bool
    , _zgProject     :: !Text
    , _zgUserIP      :: !(Maybe Text)
    , _zgZone        :: !Text
    , _zgKey         :: !(Maybe Key)
    , _zgOAuthToken  :: !(Maybe OAuthToken)
    , _zgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZonesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zgQuotaUser'
--
-- * 'zgPrettyPrint'
--
-- * 'zgProject'
--
-- * 'zgUserIP'
--
-- * 'zgZone'
--
-- * 'zgKey'
--
-- * 'zgOAuthToken'
--
-- * 'zgFields'
zonesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZonesGet'
zonesGet' pZgProject_ pZgZone_ =
    ZonesGet'
    { _zgQuotaUser = Nothing
    , _zgPrettyPrint = True
    , _zgProject = pZgProject_
    , _zgUserIP = Nothing
    , _zgZone = pZgZone_
    , _zgKey = Nothing
    , _zgOAuthToken = Nothing
    , _zgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zgQuotaUser :: Lens' ZonesGet' (Maybe Text)
zgQuotaUser
  = lens _zgQuotaUser (\ s a -> s{_zgQuotaUser = a})

-- | Returns response with indentations and line breaks.
zgPrettyPrint :: Lens' ZonesGet' Bool
zgPrettyPrint
  = lens _zgPrettyPrint
      (\ s a -> s{_zgPrettyPrint = a})

-- | Project ID for this request.
zgProject :: Lens' ZonesGet' Text
zgProject
  = lens _zgProject (\ s a -> s{_zgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zgUserIP :: Lens' ZonesGet' (Maybe Text)
zgUserIP = lens _zgUserIP (\ s a -> s{_zgUserIP = a})

-- | Name of the zone resource to return.
zgZone :: Lens' ZonesGet' Text
zgZone = lens _zgZone (\ s a -> s{_zgZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zgKey :: Lens' ZonesGet' (Maybe Key)
zgKey = lens _zgKey (\ s a -> s{_zgKey = a})

-- | OAuth 2.0 token for the current user.
zgOAuthToken :: Lens' ZonesGet' (Maybe OAuthToken)
zgOAuthToken
  = lens _zgOAuthToken (\ s a -> s{_zgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
zgFields :: Lens' ZonesGet' (Maybe Text)
zgFields = lens _zgFields (\ s a -> s{_zgFields = a})

instance GoogleAuth ZonesGet' where
        authKey = zgKey . _Just
        authToken = zgOAuthToken . _Just

instance GoogleRequest ZonesGet' where
        type Rs ZonesGet' = Zone
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ZonesGet'{..}
          = go _zgProject _zgZone _zgQuotaUser
              (Just _zgPrettyPrint)
              _zgUserIP
              _zgFields
              _zgKey
              _zgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ZonesGetResource) r
                      u
