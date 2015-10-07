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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List resource views.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsList@.
module Network.Google.Resource.ResourceViews.ZoneViews.List
    (
    -- * REST Resource
      ZoneViewsListResource

    -- * Creating a Request
    , zoneViewsList'
    , ZoneViewsList'

    -- * Request Lenses
    , zvlQuotaUser
    , zvlPrettyPrint
    , zvlProject
    , zvlUserIP
    , zvlZone
    , zvlKey
    , zvlPageToken
    , zvlOAuthToken
    , zvlMaxResults
    , zvlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @ResourceviewsZoneViewsList@ method which the
-- 'ZoneViewsList'' request conforms to.
type ZoneViewsListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ZoneViewsList

-- | List resource views.
--
-- /See:/ 'zoneViewsList'' smart constructor.
data ZoneViewsList' = ZoneViewsList'
    { _zvlQuotaUser   :: !(Maybe Text)
    , _zvlPrettyPrint :: !Bool
    , _zvlProject     :: !Text
    , _zvlUserIP      :: !(Maybe Text)
    , _zvlZone        :: !Text
    , _zvlKey         :: !(Maybe AuthKey)
    , _zvlPageToken   :: !(Maybe Text)
    , _zvlOAuthToken  :: !(Maybe OAuthToken)
    , _zvlMaxResults  :: !Int32
    , _zvlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvlQuotaUser'
--
-- * 'zvlPrettyPrint'
--
-- * 'zvlProject'
--
-- * 'zvlUserIP'
--
-- * 'zvlZone'
--
-- * 'zvlKey'
--
-- * 'zvlPageToken'
--
-- * 'zvlOAuthToken'
--
-- * 'zvlMaxResults'
--
-- * 'zvlFields'
zoneViewsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsList'
zoneViewsList' pZvlProject_ pZvlZone_ =
    ZoneViewsList'
    { _zvlQuotaUser = Nothing
    , _zvlPrettyPrint = True
    , _zvlProject = pZvlProject_
    , _zvlUserIP = Nothing
    , _zvlZone = pZvlZone_
    , _zvlKey = Nothing
    , _zvlPageToken = Nothing
    , _zvlOAuthToken = Nothing
    , _zvlMaxResults = 5000
    , _zvlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zvlQuotaUser :: Lens' ZoneViewsList' (Maybe Text)
zvlQuotaUser
  = lens _zvlQuotaUser (\ s a -> s{_zvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
zvlPrettyPrint :: Lens' ZoneViewsList' Bool
zvlPrettyPrint
  = lens _zvlPrettyPrint
      (\ s a -> s{_zvlPrettyPrint = a})

-- | The project name of the resource view.
zvlProject :: Lens' ZoneViewsList' Text
zvlProject
  = lens _zvlProject (\ s a -> s{_zvlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zvlUserIP :: Lens' ZoneViewsList' (Maybe Text)
zvlUserIP
  = lens _zvlUserIP (\ s a -> s{_zvlUserIP = a})

-- | The zone name of the resource view.
zvlZone :: Lens' ZoneViewsList' Text
zvlZone = lens _zvlZone (\ s a -> s{_zvlZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvlKey :: Lens' ZoneViewsList' (Maybe AuthKey)
zvlKey = lens _zvlKey (\ s a -> s{_zvlKey = a})

-- | Specifies a nextPageToken returned by a previous list request. This
-- token can be used to request the next page of results from a previous
-- list request.
zvlPageToken :: Lens' ZoneViewsList' (Maybe Text)
zvlPageToken
  = lens _zvlPageToken (\ s a -> s{_zvlPageToken = a})

-- | OAuth 2.0 token for the current user.
zvlOAuthToken :: Lens' ZoneViewsList' (Maybe OAuthToken)
zvlOAuthToken
  = lens _zvlOAuthToken
      (\ s a -> s{_zvlOAuthToken = a})

-- | Maximum count of results to be returned. Acceptable values are 0 to
-- 5000, inclusive. (Default: 5000)
zvlMaxResults :: Lens' ZoneViewsList' Int32
zvlMaxResults
  = lens _zvlMaxResults
      (\ s a -> s{_zvlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
zvlFields :: Lens' ZoneViewsList' (Maybe Text)
zvlFields
  = lens _zvlFields (\ s a -> s{_zvlFields = a})

instance GoogleAuth ZoneViewsList' where
        _AuthKey = zvlKey . _Just
        _AuthToken = zvlOAuthToken . _Just

instance GoogleRequest ZoneViewsList' where
        type Rs ZoneViewsList' = ZoneViewsList
        request = requestWith resourceViewsRequest
        requestWith rq ZoneViewsList'{..}
          = go _zvlProject _zvlZone _zvlPageToken
              (Just _zvlMaxResults)
              _zvlQuotaUser
              (Just _zvlPrettyPrint)
              _zvlUserIP
              _zvlFields
              _zvlKey
              _zvlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ZoneViewsListResource)
                      rq
