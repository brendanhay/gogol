{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Resourceviews.ZoneViews.RemoveResources
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove resources from the view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsRemoveResources@.
module Resourceviews.ZoneViews.RemoveResources
    (
    -- * REST Resource
      ZoneViewsRemoveResourcesAPI

    -- * Creating a Request
    , zoneViewsRemoveResources
    , ZoneViewsRemoveResources

    -- * Request Lenses
    , zvrrQuotaUser
    , zvrrPrettyPrint
    , zvrrResourceView
    , zvrrProject
    , zvrrUserIp
    , zvrrZone
    , zvrrKey
    , zvrrOauthToken
    , zvrrFields
    , zvrrAlt
    ) where

import           Network.Google.InstanceGroups.Types
import           Network.Google.Prelude

-- | A resource alias for @ResourceviewsZoneViewsRemoveResources@ which the
-- 'ZoneViewsRemoveResources' request conforms to.
type ZoneViewsRemoveResourcesAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               "removeResources" :> Post '[JSON] Operation

-- | Remove resources from the view.
--
-- /See:/ 'zoneViewsRemoveResources' smart constructor.
data ZoneViewsRemoveResources = ZoneViewsRemoveResources
    { _zvrrQuotaUser    :: !(Maybe Text)
    , _zvrrPrettyPrint  :: !Bool
    , _zvrrResourceView :: !Text
    , _zvrrProject      :: !Text
    , _zvrrUserIp       :: !(Maybe Text)
    , _zvrrZone         :: !Text
    , _zvrrKey          :: !(Maybe Text)
    , _zvrrOauthToken   :: !(Maybe Text)
    , _zvrrFields       :: !(Maybe Text)
    , _zvrrAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsRemoveResources'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvrrQuotaUser'
--
-- * 'zvrrPrettyPrint'
--
-- * 'zvrrResourceView'
--
-- * 'zvrrProject'
--
-- * 'zvrrUserIp'
--
-- * 'zvrrZone'
--
-- * 'zvrrKey'
--
-- * 'zvrrOauthToken'
--
-- * 'zvrrFields'
--
-- * 'zvrrAlt'
zoneViewsRemoveResources
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsRemoveResources
zoneViewsRemoveResources pZvrrResourceView_ pZvrrProject_ pZvrrZone_ =
    ZoneViewsRemoveResources
    { _zvrrQuotaUser = Nothing
    , _zvrrPrettyPrint = True
    , _zvrrResourceView = pZvrrResourceView_
    , _zvrrProject = pZvrrProject_
    , _zvrrUserIp = Nothing
    , _zvrrZone = pZvrrZone_
    , _zvrrKey = Nothing
    , _zvrrOauthToken = Nothing
    , _zvrrFields = Nothing
    , _zvrrAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zvrrQuotaUser :: Lens' ZoneViewsRemoveResources' (Maybe Text)
zvrrQuotaUser
  = lens _zvrrQuotaUser
      (\ s a -> s{_zvrrQuotaUser = a})

-- | Returns response with indentations and line breaks.
zvrrPrettyPrint :: Lens' ZoneViewsRemoveResources' Bool
zvrrPrettyPrint
  = lens _zvrrPrettyPrint
      (\ s a -> s{_zvrrPrettyPrint = a})

-- | The name of the resource view.
zvrrResourceView :: Lens' ZoneViewsRemoveResources' Text
zvrrResourceView
  = lens _zvrrResourceView
      (\ s a -> s{_zvrrResourceView = a})

-- | The project name of the resource view.
zvrrProject :: Lens' ZoneViewsRemoveResources' Text
zvrrProject
  = lens _zvrrProject (\ s a -> s{_zvrrProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zvrrUserIp :: Lens' ZoneViewsRemoveResources' (Maybe Text)
zvrrUserIp
  = lens _zvrrUserIp (\ s a -> s{_zvrrUserIp = a})

-- | The zone name of the resource view.
zvrrZone :: Lens' ZoneViewsRemoveResources' Text
zvrrZone = lens _zvrrZone (\ s a -> s{_zvrrZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvrrKey :: Lens' ZoneViewsRemoveResources' (Maybe Text)
zvrrKey = lens _zvrrKey (\ s a -> s{_zvrrKey = a})

-- | OAuth 2.0 token for the current user.
zvrrOauthToken :: Lens' ZoneViewsRemoveResources' (Maybe Text)
zvrrOauthToken
  = lens _zvrrOauthToken
      (\ s a -> s{_zvrrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
zvrrFields :: Lens' ZoneViewsRemoveResources' (Maybe Text)
zvrrFields
  = lens _zvrrFields (\ s a -> s{_zvrrFields = a})

-- | Data format for the response.
zvrrAlt :: Lens' ZoneViewsRemoveResources' Text
zvrrAlt = lens _zvrrAlt (\ s a -> s{_zvrrAlt = a})

instance GoogleRequest ZoneViewsRemoveResources'
         where
        type Rs ZoneViewsRemoveResources' = Operation
        request = requestWithRoute defReq instanceGroupsURL
        requestWithRoute r u ZoneViewsRemoveResources{..}
          = go _zvrrQuotaUser _zvrrPrettyPrint
              _zvrrResourceView
              _zvrrProject
              _zvrrUserIp
              _zvrrZone
              _zvrrKey
              _zvrrOauthToken
              _zvrrFields
              _zvrrAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneViewsRemoveResourcesAPI)
                      r
                      u
