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
-- Module      : Network.Google.Resource.Compute.Regions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified region resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeRegionsGet@.
module Network.Google.Resource.Compute.Regions.Get
    (
    -- * REST Resource
      RegionsGetResource

    -- * Creating a Request
    , regionsGet'
    , RegionsGet'

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgProject
    , rgUserIP
    , rgKey
    , rgRegion
    , rgOAuthToken
    , rgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeRegionsGet@ method which the
-- 'RegionsGet'' request conforms to.
type RegionsGetResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Region

-- | Returns the specified region resource.
--
-- /See:/ 'regionsGet'' smart constructor.
data RegionsGet' = RegionsGet'
    { _rgQuotaUser   :: !(Maybe Text)
    , _rgPrettyPrint :: !Bool
    , _rgProject     :: !Text
    , _rgUserIP      :: !(Maybe Text)
    , _rgKey         :: !(Maybe AuthKey)
    , _rgRegion      :: !Text
    , _rgOAuthToken  :: !(Maybe OAuthToken)
    , _rgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgProject'
--
-- * 'rgUserIP'
--
-- * 'rgKey'
--
-- * 'rgRegion'
--
-- * 'rgOAuthToken'
--
-- * 'rgFields'
regionsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> RegionsGet'
regionsGet' pRgProject_ pRgRegion_ =
    RegionsGet'
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgProject = pRgProject_
    , _rgUserIP = Nothing
    , _rgKey = Nothing
    , _rgRegion = pRgRegion_
    , _rgOAuthToken = Nothing
    , _rgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' RegionsGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' RegionsGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | Project ID for this request.
rgProject :: Lens' RegionsGet' Text
rgProject
  = lens _rgProject (\ s a -> s{_rgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIP :: Lens' RegionsGet' (Maybe Text)
rgUserIP = lens _rgUserIP (\ s a -> s{_rgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' RegionsGet' (Maybe AuthKey)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | Name of the region resource to return.
rgRegion :: Lens' RegionsGet' Text
rgRegion = lens _rgRegion (\ s a -> s{_rgRegion = a})

-- | OAuth 2.0 token for the current user.
rgOAuthToken :: Lens' RegionsGet' (Maybe OAuthToken)
rgOAuthToken
  = lens _rgOAuthToken (\ s a -> s{_rgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' RegionsGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

instance GoogleAuth RegionsGet' where
        _AuthKey = rgKey . _Just
        _AuthToken = rgOAuthToken . _Just

instance GoogleRequest RegionsGet' where
        type Rs RegionsGet' = Region
        request = requestWith computeRequest
        requestWith rq RegionsGet'{..}
          = go _rgProject _rgRegion _rgQuotaUser
              (Just _rgPrettyPrint)
              _rgUserIP
              _rgFields
              _rgKey
              _rgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy RegionsGetResource) rq
