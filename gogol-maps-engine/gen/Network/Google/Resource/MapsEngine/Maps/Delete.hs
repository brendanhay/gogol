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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a map.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsDelete@.
module Network.Google.Resource.MapsEngine.Maps.Delete
    (
    -- * REST Resource
      MapsDeleteResource

    -- * Creating a Request
    , mapsDelete'
    , MapsDelete'

    -- * Request Lenses
    , mdQuotaUser
    , mdPrettyPrint
    , mdUserIP
    , mdKey
    , mdId
    , mdOAuthToken
    , mdFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsDelete@ which the
-- 'MapsDelete'' request conforms to.
type MapsDeleteResource =
     "maps" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a map.
--
-- /See:/ 'mapsDelete'' smart constructor.
data MapsDelete' = MapsDelete'
    { _mdQuotaUser   :: !(Maybe Text)
    , _mdPrettyPrint :: !Bool
    , _mdUserIP      :: !(Maybe Text)
    , _mdKey         :: !(Maybe Key)
    , _mdId          :: !Text
    , _mdOAuthToken  :: !(Maybe OAuthToken)
    , _mdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdQuotaUser'
--
-- * 'mdPrettyPrint'
--
-- * 'mdUserIP'
--
-- * 'mdKey'
--
-- * 'mdId'
--
-- * 'mdOAuthToken'
--
-- * 'mdFields'
mapsDelete'
    :: Text -- ^ 'id'
    -> MapsDelete'
mapsDelete' pMdId_ =
    MapsDelete'
    { _mdQuotaUser = Nothing
    , _mdPrettyPrint = True
    , _mdUserIP = Nothing
    , _mdKey = Nothing
    , _mdId = pMdId_
    , _mdOAuthToken = Nothing
    , _mdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mdQuotaUser :: Lens' MapsDelete' (Maybe Text)
mdQuotaUser
  = lens _mdQuotaUser (\ s a -> s{_mdQuotaUser = a})

-- | Returns response with indentations and line breaks.
mdPrettyPrint :: Lens' MapsDelete' Bool
mdPrettyPrint
  = lens _mdPrettyPrint
      (\ s a -> s{_mdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mdUserIP :: Lens' MapsDelete' (Maybe Text)
mdUserIP = lens _mdUserIP (\ s a -> s{_mdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdKey :: Lens' MapsDelete' (Maybe Key)
mdKey = lens _mdKey (\ s a -> s{_mdKey = a})

-- | The ID of the map. Only the map creator or project owner are permitted
-- to delete. If the map is published the request will fail. Unpublish the
-- map prior to deleting.
mdId :: Lens' MapsDelete' Text
mdId = lens _mdId (\ s a -> s{_mdId = a})

-- | OAuth 2.0 token for the current user.
mdOAuthToken :: Lens' MapsDelete' (Maybe OAuthToken)
mdOAuthToken
  = lens _mdOAuthToken (\ s a -> s{_mdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mdFields :: Lens' MapsDelete' (Maybe Text)
mdFields = lens _mdFields (\ s a -> s{_mdFields = a})

instance GoogleAuth MapsDelete' where
        authKey = mdKey . _Just
        authToken = mdOAuthToken . _Just

instance GoogleRequest MapsDelete' where
        type Rs MapsDelete' = ()
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u MapsDelete'{..}
          = go _mdId _mdQuotaUser (Just _mdPrettyPrint)
              _mdUserIP
              _mdFields
              _mdKey
              _mdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy MapsDeleteResource)
                      r
                      u
