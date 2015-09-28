{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Regions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified region resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regions.get@.
module Network.Google.API.Compute.Regions.Get
    (
    -- * REST Resource
      RegionsGetAPI

    -- * Creating a Request
    , regionsGet'
    , RegionsGet'

    -- * Request Lenses
    , regQuotaUser
    , regPrettyPrint
    , regProject
    , regUserIp
    , regKey
    , regRegion
    , regOauthToken
    , regFields
    , regAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.regions.get which the
-- 'RegionsGet'' request conforms to.
type RegionsGetAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Region

-- | Returns the specified region resource.
--
-- /See:/ 'regionsGet'' smart constructor.
data RegionsGet' = RegionsGet'
    { _regQuotaUser   :: !(Maybe Text)
    , _regPrettyPrint :: !Bool
    , _regProject     :: !Text
    , _regUserIp      :: !(Maybe Text)
    , _regKey         :: !(Maybe Text)
    , _regRegion      :: !Text
    , _regOauthToken  :: !(Maybe Text)
    , _regFields      :: !(Maybe Text)
    , _regAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'regQuotaUser'
--
-- * 'regPrettyPrint'
--
-- * 'regProject'
--
-- * 'regUserIp'
--
-- * 'regKey'
--
-- * 'regRegion'
--
-- * 'regOauthToken'
--
-- * 'regFields'
--
-- * 'regAlt'
regionsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> RegionsGet'
regionsGet' pRegProject_ pRegRegion_ =
    RegionsGet'
    { _regQuotaUser = Nothing
    , _regPrettyPrint = True
    , _regProject = pRegProject_
    , _regUserIp = Nothing
    , _regKey = Nothing
    , _regRegion = pRegRegion_
    , _regOauthToken = Nothing
    , _regFields = Nothing
    , _regAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
regQuotaUser :: Lens' RegionsGet' (Maybe Text)
regQuotaUser
  = lens _regQuotaUser (\ s a -> s{_regQuotaUser = a})

-- | Returns response with indentations and line breaks.
regPrettyPrint :: Lens' RegionsGet' Bool
regPrettyPrint
  = lens _regPrettyPrint
      (\ s a -> s{_regPrettyPrint = a})

-- | Project ID for this request.
regProject :: Lens' RegionsGet' Text
regProject
  = lens _regProject (\ s a -> s{_regProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
regUserIp :: Lens' RegionsGet' (Maybe Text)
regUserIp
  = lens _regUserIp (\ s a -> s{_regUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
regKey :: Lens' RegionsGet' (Maybe Text)
regKey = lens _regKey (\ s a -> s{_regKey = a})

-- | Name of the region resource to return.
regRegion :: Lens' RegionsGet' Text
regRegion
  = lens _regRegion (\ s a -> s{_regRegion = a})

-- | OAuth 2.0 token for the current user.
regOauthToken :: Lens' RegionsGet' (Maybe Text)
regOauthToken
  = lens _regOauthToken
      (\ s a -> s{_regOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
regFields :: Lens' RegionsGet' (Maybe Text)
regFields
  = lens _regFields (\ s a -> s{_regFields = a})

-- | Data format for the response.
regAlt :: Lens' RegionsGet' Alt
regAlt = lens _regAlt (\ s a -> s{_regAlt = a})

instance GoogleRequest RegionsGet' where
        type Rs RegionsGet' = Region
        request = requestWithRoute defReq computeURL
        requestWithRoute r u RegionsGet'{..}
          = go _regQuotaUser (Just _regPrettyPrint) _regProject
              _regUserIp
              _regKey
              _regRegion
              _regOauthToken
              _regFields
              (Just _regAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RegionsGetAPI) r u
