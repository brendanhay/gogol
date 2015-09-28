{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Resourceviews.ZoneViews.ListResources
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the resources of the resource view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @resourceviews.zoneViews.listResources@.
module Network.Google.API.Resourceviews.ZoneViews.ListResources
    (
    -- * REST Resource
      ZoneViewsListResourcesAPI

    -- * Creating a Request
    , zoneViewsListResources'
    , ZoneViewsListResources'

    -- * Request Lenses
    , zvlrQuotaUser
    , zvlrPrettyPrint
    , zvlrResourceView
    , zvlrListState
    , zvlrProject
    , zvlrUserIp
    , zvlrFormat
    , zvlrZone
    , zvlrKey
    , zvlrServiceName
    , zvlrPageToken
    , zvlrOauthToken
    , zvlrMaxResults
    , zvlrFields
    , zvlrAlt
    ) where

import           Network.Google.InstanceGroups.Types
import           Network.Google.Prelude

-- | A resource alias for resourceviews.zoneViews.listResources which the
-- 'ZoneViewsListResources'' request conforms to.
type ZoneViewsListResourcesAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               "resources" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "listState"
                       ZoneViewsListResources'ListState
                       :>
                       QueryParam "userIp" Text :>
                         QueryParam "format" ZoneViewsListResources'Format :>
                           QueryParam "key" Text :>
                             QueryParam "serviceName" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "maxResults" Int32 :>
                                     QueryParam "fields" Text :>
                                       QueryParam "alt" Alt :>
                                         Get '[JSON]
                                           ZoneViewsListResourcesResponse

-- | List the resources of the resource view.
--
-- /See:/ 'zoneViewsListResources'' smart constructor.
data ZoneViewsListResources' = ZoneViewsListResources'
    { _zvlrQuotaUser    :: !(Maybe Text)
    , _zvlrPrettyPrint  :: !Bool
    , _zvlrResourceView :: !Text
    , _zvlrListState    :: !ZoneViewsListResources'ListState
    , _zvlrProject      :: !Text
    , _zvlrUserIp       :: !(Maybe Text)
    , _zvlrFormat       :: !(Maybe ZoneViewsListResources'Format)
    , _zvlrZone         :: !Text
    , _zvlrKey          :: !(Maybe Text)
    , _zvlrServiceName  :: !(Maybe Text)
    , _zvlrPageToken    :: !(Maybe Text)
    , _zvlrOauthToken   :: !(Maybe Text)
    , _zvlrMaxResults   :: !Int32
    , _zvlrFields       :: !(Maybe Text)
    , _zvlrAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsListResources'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvlrQuotaUser'
--
-- * 'zvlrPrettyPrint'
--
-- * 'zvlrResourceView'
--
-- * 'zvlrListState'
--
-- * 'zvlrProject'
--
-- * 'zvlrUserIp'
--
-- * 'zvlrFormat'
--
-- * 'zvlrZone'
--
-- * 'zvlrKey'
--
-- * 'zvlrServiceName'
--
-- * 'zvlrPageToken'
--
-- * 'zvlrOauthToken'
--
-- * 'zvlrMaxResults'
--
-- * 'zvlrFields'
--
-- * 'zvlrAlt'
zoneViewsListResources'
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsListResources'
zoneViewsListResources' pZvlrResourceView_ pZvlrProject_ pZvlrZone_ =
    ZoneViewsListResources'
    { _zvlrQuotaUser = Nothing
    , _zvlrPrettyPrint = True
    , _zvlrResourceView = pZvlrResourceView_
    , _zvlrListState = All
    , _zvlrProject = pZvlrProject_
    , _zvlrUserIp = Nothing
    , _zvlrFormat = Nothing
    , _zvlrZone = pZvlrZone_
    , _zvlrKey = Nothing
    , _zvlrServiceName = Nothing
    , _zvlrPageToken = Nothing
    , _zvlrOauthToken = Nothing
    , _zvlrMaxResults = 5000
    , _zvlrFields = Nothing
    , _zvlrAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zvlrQuotaUser :: Lens' ZoneViewsListResources' (Maybe Text)
zvlrQuotaUser
  = lens _zvlrQuotaUser
      (\ s a -> s{_zvlrQuotaUser = a})

-- | Returns response with indentations and line breaks.
zvlrPrettyPrint :: Lens' ZoneViewsListResources' Bool
zvlrPrettyPrint
  = lens _zvlrPrettyPrint
      (\ s a -> s{_zvlrPrettyPrint = a})

-- | The name of the resource view.
zvlrResourceView :: Lens' ZoneViewsListResources' Text
zvlrResourceView
  = lens _zvlrResourceView
      (\ s a -> s{_zvlrResourceView = a})

-- | The state of the instance to list. By default, it lists all instances.
zvlrListState :: Lens' ZoneViewsListResources' ZoneViewsListResources'ListState
zvlrListState
  = lens _zvlrListState
      (\ s a -> s{_zvlrListState = a})

-- | The project name of the resource view.
zvlrProject :: Lens' ZoneViewsListResources' Text
zvlrProject
  = lens _zvlrProject (\ s a -> s{_zvlrProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zvlrUserIp :: Lens' ZoneViewsListResources' (Maybe Text)
zvlrUserIp
  = lens _zvlrUserIp (\ s a -> s{_zvlrUserIp = a})

-- | The requested format of the return value. It can be URL or URL_PORT. A
-- JSON object will be included in the response based on the format. The
-- default format is NONE, which results in no JSON in the response.
zvlrFormat :: Lens' ZoneViewsListResources' (Maybe ZoneViewsListResources'Format)
zvlrFormat
  = lens _zvlrFormat (\ s a -> s{_zvlrFormat = a})

-- | The zone name of the resource view.
zvlrZone :: Lens' ZoneViewsListResources' Text
zvlrZone = lens _zvlrZone (\ s a -> s{_zvlrZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvlrKey :: Lens' ZoneViewsListResources' (Maybe Text)
zvlrKey = lens _zvlrKey (\ s a -> s{_zvlrKey = a})

-- | The service name to return in the response. It is optional and if it is
-- not set, all the service end points will be returned.
zvlrServiceName :: Lens' ZoneViewsListResources' (Maybe Text)
zvlrServiceName
  = lens _zvlrServiceName
      (\ s a -> s{_zvlrServiceName = a})

-- | Specifies a nextPageToken returned by a previous list request. This
-- token can be used to request the next page of results from a previous
-- list request.
zvlrPageToken :: Lens' ZoneViewsListResources' (Maybe Text)
zvlrPageToken
  = lens _zvlrPageToken
      (\ s a -> s{_zvlrPageToken = a})

-- | OAuth 2.0 token for the current user.
zvlrOauthToken :: Lens' ZoneViewsListResources' (Maybe Text)
zvlrOauthToken
  = lens _zvlrOauthToken
      (\ s a -> s{_zvlrOauthToken = a})

-- | Maximum count of results to be returned. Acceptable values are 0 to
-- 5000, inclusive. (Default: 5000)
zvlrMaxResults :: Lens' ZoneViewsListResources' Int32
zvlrMaxResults
  = lens _zvlrMaxResults
      (\ s a -> s{_zvlrMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
zvlrFields :: Lens' ZoneViewsListResources' (Maybe Text)
zvlrFields
  = lens _zvlrFields (\ s a -> s{_zvlrFields = a})

-- | Data format for the response.
zvlrAlt :: Lens' ZoneViewsListResources' Alt
zvlrAlt = lens _zvlrAlt (\ s a -> s{_zvlrAlt = a})

instance GoogleRequest ZoneViewsListResources' where
        type Rs ZoneViewsListResources' =
             ZoneViewsListResourcesResponse
        request = requestWithRoute defReq instanceGroupsURL
        requestWithRoute r u ZoneViewsListResources'{..}
          = go _zvlrQuotaUser (Just _zvlrPrettyPrint)
              _zvlrResourceView
              (Just _zvlrListState)
              _zvlrProject
              _zvlrUserIp
              _zvlrFormat
              _zvlrZone
              _zvlrKey
              _zvlrServiceName
              _zvlrPageToken
              _zvlrOauthToken
              (Just _zvlrMaxResults)
              _zvlrFields
              (Just _zvlrAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneViewsListResourcesAPI)
                      r
                      u
