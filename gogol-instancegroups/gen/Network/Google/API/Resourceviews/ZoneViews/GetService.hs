{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Resourceviews.ZoneViews.GetService
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the service information of a resource view or a resource.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @resourceviews.zoneViews.getService@.
module Network.Google.API.Resourceviews.ZoneViews.GetService
    (
    -- * REST Resource
      ZoneViewsGetServiceAPI

    -- * Creating a Request
    , zoneViewsGetService'
    , ZoneViewsGetService'

    -- * Request Lenses
    , zvgsQuotaUser
    , zvgsPrettyPrint
    , zvgsResourceView
    , zvgsResourceName
    , zvgsProject
    , zvgsUserIp
    , zvgsZone
    , zvgsKey
    , zvgsOauthToken
    , zvgsFields
    , zvgsAlt
    ) where

import           Network.Google.InstanceGroups.Types
import           Network.Google.Prelude

-- | A resource alias for resourceviews.zoneViews.getService which the
-- 'ZoneViewsGetService'' request conforms to.
type ZoneViewsGetServiceAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               "getService" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "resourceName" Text :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Post '[JSON] ZoneViewsGetServiceResponse

-- | Get the service information of a resource view or a resource.
--
-- /See:/ 'zoneViewsGetService'' smart constructor.
data ZoneViewsGetService' = ZoneViewsGetService'
    { _zvgsQuotaUser    :: !(Maybe Text)
    , _zvgsPrettyPrint  :: !Bool
    , _zvgsResourceView :: !Text
    , _zvgsResourceName :: !(Maybe Text)
    , _zvgsProject      :: !Text
    , _zvgsUserIp       :: !(Maybe Text)
    , _zvgsZone         :: !Text
    , _zvgsKey          :: !(Maybe Text)
    , _zvgsOauthToken   :: !(Maybe Text)
    , _zvgsFields       :: !(Maybe Text)
    , _zvgsAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsGetService'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvgsQuotaUser'
--
-- * 'zvgsPrettyPrint'
--
-- * 'zvgsResourceView'
--
-- * 'zvgsResourceName'
--
-- * 'zvgsProject'
--
-- * 'zvgsUserIp'
--
-- * 'zvgsZone'
--
-- * 'zvgsKey'
--
-- * 'zvgsOauthToken'
--
-- * 'zvgsFields'
--
-- * 'zvgsAlt'
zoneViewsGetService'
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsGetService'
zoneViewsGetService' pZvgsResourceView_ pZvgsProject_ pZvgsZone_ =
    ZoneViewsGetService'
    { _zvgsQuotaUser = Nothing
    , _zvgsPrettyPrint = True
    , _zvgsResourceView = pZvgsResourceView_
    , _zvgsResourceName = Nothing
    , _zvgsProject = pZvgsProject_
    , _zvgsUserIp = Nothing
    , _zvgsZone = pZvgsZone_
    , _zvgsKey = Nothing
    , _zvgsOauthToken = Nothing
    , _zvgsFields = Nothing
    , _zvgsAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zvgsQuotaUser :: Lens' ZoneViewsGetService' (Maybe Text)
zvgsQuotaUser
  = lens _zvgsQuotaUser
      (\ s a -> s{_zvgsQuotaUser = a})

-- | Returns response with indentations and line breaks.
zvgsPrettyPrint :: Lens' ZoneViewsGetService' Bool
zvgsPrettyPrint
  = lens _zvgsPrettyPrint
      (\ s a -> s{_zvgsPrettyPrint = a})

-- | The name of the resource view.
zvgsResourceView :: Lens' ZoneViewsGetService' Text
zvgsResourceView
  = lens _zvgsResourceView
      (\ s a -> s{_zvgsResourceView = a})

-- | The name of the resource if user wants to get the service information of
-- the resource.
zvgsResourceName :: Lens' ZoneViewsGetService' (Maybe Text)
zvgsResourceName
  = lens _zvgsResourceName
      (\ s a -> s{_zvgsResourceName = a})

-- | The project name of the resource view.
zvgsProject :: Lens' ZoneViewsGetService' Text
zvgsProject
  = lens _zvgsProject (\ s a -> s{_zvgsProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zvgsUserIp :: Lens' ZoneViewsGetService' (Maybe Text)
zvgsUserIp
  = lens _zvgsUserIp (\ s a -> s{_zvgsUserIp = a})

-- | The zone name of the resource view.
zvgsZone :: Lens' ZoneViewsGetService' Text
zvgsZone = lens _zvgsZone (\ s a -> s{_zvgsZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvgsKey :: Lens' ZoneViewsGetService' (Maybe Text)
zvgsKey = lens _zvgsKey (\ s a -> s{_zvgsKey = a})

-- | OAuth 2.0 token for the current user.
zvgsOauthToken :: Lens' ZoneViewsGetService' (Maybe Text)
zvgsOauthToken
  = lens _zvgsOauthToken
      (\ s a -> s{_zvgsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
zvgsFields :: Lens' ZoneViewsGetService' (Maybe Text)
zvgsFields
  = lens _zvgsFields (\ s a -> s{_zvgsFields = a})

-- | Data format for the response.
zvgsAlt :: Lens' ZoneViewsGetService' Alt
zvgsAlt = lens _zvgsAlt (\ s a -> s{_zvgsAlt = a})

instance GoogleRequest ZoneViewsGetService' where
        type Rs ZoneViewsGetService' =
             ZoneViewsGetServiceResponse
        request = requestWithRoute defReq instanceGroupsURL
        requestWithRoute r u ZoneViewsGetService'{..}
          = go _zvgsQuotaUser (Just _zvgsPrettyPrint)
              _zvgsResourceView
              _zvgsResourceName
              _zvgsProject
              _zvgsUserIp
              _zvgsZone
              _zvgsKey
              _zvgsOauthToken
              _zvgsFields
              (Just _zvgsAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneViewsGetServiceAPI)
                      r
                      u
