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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified instance template resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceTemplatesGet@.
module Network.Google.Resource.Compute.InstanceTemplates.Get
    (
    -- * REST Resource
      InstanceTemplatesGetResource

    -- * Creating a Request
    , instanceTemplatesGet'
    , InstanceTemplatesGet'

    -- * Request Lenses
    , itgQuotaUser
    , itgPrettyPrint
    , itgProject
    , itgUserIp
    , itgInstanceTemplate
    , itgKey
    , itgOauthToken
    , itgFields
    , itgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceTemplatesGet@ which the
-- 'InstanceTemplatesGet'' request conforms to.
type InstanceTemplatesGetResource =
     Capture "project" Text :>
       "global" :>
         "instanceTemplates" :>
           Capture "instanceTemplate" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] InstanceTemplate

-- | Returns the specified instance template resource.
--
-- /See:/ 'instanceTemplatesGet'' smart constructor.
data InstanceTemplatesGet' = InstanceTemplatesGet'
    { _itgQuotaUser        :: !(Maybe Text)
    , _itgPrettyPrint      :: !Bool
    , _itgProject          :: !Text
    , _itgUserIp           :: !(Maybe Text)
    , _itgInstanceTemplate :: !Text
    , _itgKey              :: !(Maybe Text)
    , _itgOauthToken       :: !(Maybe Text)
    , _itgFields           :: !(Maybe Text)
    , _itgAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplatesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itgQuotaUser'
--
-- * 'itgPrettyPrint'
--
-- * 'itgProject'
--
-- * 'itgUserIp'
--
-- * 'itgInstanceTemplate'
--
-- * 'itgKey'
--
-- * 'itgOauthToken'
--
-- * 'itgFields'
--
-- * 'itgAlt'
instanceTemplatesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceTemplate'
    -> InstanceTemplatesGet'
instanceTemplatesGet' pItgProject_ pItgInstanceTemplate_ =
    InstanceTemplatesGet'
    { _itgQuotaUser = Nothing
    , _itgPrettyPrint = True
    , _itgProject = pItgProject_
    , _itgUserIp = Nothing
    , _itgInstanceTemplate = pItgInstanceTemplate_
    , _itgKey = Nothing
    , _itgOauthToken = Nothing
    , _itgFields = Nothing
    , _itgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
itgQuotaUser :: Lens' InstanceTemplatesGet' (Maybe Text)
itgQuotaUser
  = lens _itgQuotaUser (\ s a -> s{_itgQuotaUser = a})

-- | Returns response with indentations and line breaks.
itgPrettyPrint :: Lens' InstanceTemplatesGet' Bool
itgPrettyPrint
  = lens _itgPrettyPrint
      (\ s a -> s{_itgPrettyPrint = a})

-- | The project ID for this request.
itgProject :: Lens' InstanceTemplatesGet' Text
itgProject
  = lens _itgProject (\ s a -> s{_itgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
itgUserIp :: Lens' InstanceTemplatesGet' (Maybe Text)
itgUserIp
  = lens _itgUserIp (\ s a -> s{_itgUserIp = a})

-- | The name of the instance template.
itgInstanceTemplate :: Lens' InstanceTemplatesGet' Text
itgInstanceTemplate
  = lens _itgInstanceTemplate
      (\ s a -> s{_itgInstanceTemplate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
itgKey :: Lens' InstanceTemplatesGet' (Maybe Text)
itgKey = lens _itgKey (\ s a -> s{_itgKey = a})

-- | OAuth 2.0 token for the current user.
itgOauthToken :: Lens' InstanceTemplatesGet' (Maybe Text)
itgOauthToken
  = lens _itgOauthToken
      (\ s a -> s{_itgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
itgFields :: Lens' InstanceTemplatesGet' (Maybe Text)
itgFields
  = lens _itgFields (\ s a -> s{_itgFields = a})

-- | Data format for the response.
itgAlt :: Lens' InstanceTemplatesGet' Alt
itgAlt = lens _itgAlt (\ s a -> s{_itgAlt = a})

instance GoogleRequest InstanceTemplatesGet' where
        type Rs InstanceTemplatesGet' = InstanceTemplate
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceTemplatesGet'{..}
          = go _itgQuotaUser (Just _itgPrettyPrint) _itgProject
              _itgUserIp
              _itgInstanceTemplate
              _itgKey
              _itgOauthToken
              _itgFields
              (Just _itgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceTemplatesGetResource)
                      r
                      u
