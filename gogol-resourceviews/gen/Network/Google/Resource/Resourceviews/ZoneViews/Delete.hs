{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Resourceviews.ZoneViews.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a resource view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsDelete@.
module Resourceviews.ZoneViews.Delete
    (
    -- * REST Resource
      ZoneViewsDeleteAPI

    -- * Creating a Request
    , zoneViewsDelete
    , ZoneViewsDelete

    -- * Request Lenses
    , zvdQuotaUser
    , zvdPrettyPrint
    , zvdResourceView
    , zvdProject
    , zvdUserIp
    , zvdZone
    , zvdKey
    , zvdOauthToken
    , zvdFields
    , zvdAlt
    ) where

import           Network.Google.InstanceGroups.Types
import           Network.Google.Prelude

-- | A resource alias for @ResourceviewsZoneViewsDelete@ which the
-- 'ZoneViewsDelete' request conforms to.
type ZoneViewsDeleteAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               Delete '[JSON] Operation

-- | Delete a resource view.
--
-- /See:/ 'zoneViewsDelete' smart constructor.
data ZoneViewsDelete = ZoneViewsDelete
    { _zvdQuotaUser    :: !(Maybe Text)
    , _zvdPrettyPrint  :: !Bool
    , _zvdResourceView :: !Text
    , _zvdProject      :: !Text
    , _zvdUserIp       :: !(Maybe Text)
    , _zvdZone         :: !Text
    , _zvdKey          :: !(Maybe Text)
    , _zvdOauthToken   :: !(Maybe Text)
    , _zvdFields       :: !(Maybe Text)
    , _zvdAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvdQuotaUser'
--
-- * 'zvdPrettyPrint'
--
-- * 'zvdResourceView'
--
-- * 'zvdProject'
--
-- * 'zvdUserIp'
--
-- * 'zvdZone'
--
-- * 'zvdKey'
--
-- * 'zvdOauthToken'
--
-- * 'zvdFields'
--
-- * 'zvdAlt'
zoneViewsDelete
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsDelete
zoneViewsDelete pZvdResourceView_ pZvdProject_ pZvdZone_ =
    ZoneViewsDelete
    { _zvdQuotaUser = Nothing
    , _zvdPrettyPrint = True
    , _zvdResourceView = pZvdResourceView_
    , _zvdProject = pZvdProject_
    , _zvdUserIp = Nothing
    , _zvdZone = pZvdZone_
    , _zvdKey = Nothing
    , _zvdOauthToken = Nothing
    , _zvdFields = Nothing
    , _zvdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zvdQuotaUser :: Lens' ZoneViewsDelete' (Maybe Text)
zvdQuotaUser
  = lens _zvdQuotaUser (\ s a -> s{_zvdQuotaUser = a})

-- | Returns response with indentations and line breaks.
zvdPrettyPrint :: Lens' ZoneViewsDelete' Bool
zvdPrettyPrint
  = lens _zvdPrettyPrint
      (\ s a -> s{_zvdPrettyPrint = a})

-- | The name of the resource view.
zvdResourceView :: Lens' ZoneViewsDelete' Text
zvdResourceView
  = lens _zvdResourceView
      (\ s a -> s{_zvdResourceView = a})

-- | The project name of the resource view.
zvdProject :: Lens' ZoneViewsDelete' Text
zvdProject
  = lens _zvdProject (\ s a -> s{_zvdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zvdUserIp :: Lens' ZoneViewsDelete' (Maybe Text)
zvdUserIp
  = lens _zvdUserIp (\ s a -> s{_zvdUserIp = a})

-- | The zone name of the resource view.
zvdZone :: Lens' ZoneViewsDelete' Text
zvdZone = lens _zvdZone (\ s a -> s{_zvdZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvdKey :: Lens' ZoneViewsDelete' (Maybe Text)
zvdKey = lens _zvdKey (\ s a -> s{_zvdKey = a})

-- | OAuth 2.0 token for the current user.
zvdOauthToken :: Lens' ZoneViewsDelete' (Maybe Text)
zvdOauthToken
  = lens _zvdOauthToken
      (\ s a -> s{_zvdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
zvdFields :: Lens' ZoneViewsDelete' (Maybe Text)
zvdFields
  = lens _zvdFields (\ s a -> s{_zvdFields = a})

-- | Data format for the response.
zvdAlt :: Lens' ZoneViewsDelete' Text
zvdAlt = lens _zvdAlt (\ s a -> s{_zvdAlt = a})

instance GoogleRequest ZoneViewsDelete' where
        type Rs ZoneViewsDelete' = Operation
        request = requestWithRoute defReq instanceGroupsURL
        requestWithRoute r u ZoneViewsDelete{..}
          = go _zvdQuotaUser _zvdPrettyPrint _zvdResourceView
              _zvdProject
              _zvdUserIp
              _zvdZone
              _zvdKey
              _zvdOauthToken
              _zvdFields
              _zvdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ZoneViewsDeleteAPI)
                      r
                      u
