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
-- Module      : Network.Google.Resource.Mapsengine.Maps.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a map.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineMapsDelete@.
module Network.Google.Resource.Mapsengine.Maps.Delete
    (
    -- * REST Resource
      MapsDeleteResource

    -- * Creating a Request
    , mapsDelete'
    , MapsDelete'

    -- * Request Lenses
    , mdQuotaUser
    , mdPrettyPrint
    , mdUserIp
    , mdKey
    , mdId
    , mdOauthToken
    , mdFields
    , mdAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsDelete@ which the
-- 'MapsDelete'' request conforms to.
type MapsDeleteResource =
     "maps" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete a map.
--
-- /See:/ 'mapsDelete'' smart constructor.
data MapsDelete' = MapsDelete'
    { _mdQuotaUser   :: !(Maybe Text)
    , _mdPrettyPrint :: !Bool
    , _mdUserIp      :: !(Maybe Text)
    , _mdKey         :: !(Maybe Text)
    , _mdId          :: !Text
    , _mdOauthToken  :: !(Maybe Text)
    , _mdFields      :: !(Maybe Text)
    , _mdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdQuotaUser'
--
-- * 'mdPrettyPrint'
--
-- * 'mdUserIp'
--
-- * 'mdKey'
--
-- * 'mdId'
--
-- * 'mdOauthToken'
--
-- * 'mdFields'
--
-- * 'mdAlt'
mapsDelete'
    :: Text -- ^ 'id'
    -> MapsDelete'
mapsDelete' pMdId_ =
    MapsDelete'
    { _mdQuotaUser = Nothing
    , _mdPrettyPrint = True
    , _mdUserIp = Nothing
    , _mdKey = Nothing
    , _mdId = pMdId_
    , _mdOauthToken = Nothing
    , _mdFields = Nothing
    , _mdAlt = JSON
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
mdUserIp :: Lens' MapsDelete' (Maybe Text)
mdUserIp = lens _mdUserIp (\ s a -> s{_mdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdKey :: Lens' MapsDelete' (Maybe Text)
mdKey = lens _mdKey (\ s a -> s{_mdKey = a})

-- | The ID of the map. Only the map creator or project owner are permitted
-- to delete. If the map is published the request will fail. Unpublish the
-- map prior to deleting.
mdId :: Lens' MapsDelete' Text
mdId = lens _mdId (\ s a -> s{_mdId = a})

-- | OAuth 2.0 token for the current user.
mdOauthToken :: Lens' MapsDelete' (Maybe Text)
mdOauthToken
  = lens _mdOauthToken (\ s a -> s{_mdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mdFields :: Lens' MapsDelete' (Maybe Text)
mdFields = lens _mdFields (\ s a -> s{_mdFields = a})

-- | Data format for the response.
mdAlt :: Lens' MapsDelete' Alt
mdAlt = lens _mdAlt (\ s a -> s{_mdAlt = a})

instance GoogleRequest MapsDelete' where
        type Rs MapsDelete' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsDelete'{..}
          = go _mdQuotaUser (Just _mdPrettyPrint) _mdUserIp
              _mdKey
              _mdId
              _mdOauthToken
              _mdFields
              (Just _mdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy MapsDeleteResource)
                      r
                      u
