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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an instance template in the specified project using the data
-- that is included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceTemplatesInsert@.
module Network.Google.Resource.Compute.InstanceTemplates.Insert
    (
    -- * REST Resource
      InstanceTemplatesInsertResource

    -- * Creating a Request
    , instanceTemplatesInsert'
    , InstanceTemplatesInsert'

    -- * Request Lenses
    , itiQuotaUser
    , itiPrettyPrint
    , itiProject
    , itiUserIp
    , itiKey
    , itiOauthToken
    , itiFields
    , itiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceTemplatesInsert@ which the
-- 'InstanceTemplatesInsert'' request conforms to.
type InstanceTemplatesInsertResource =
     Capture "project" Text :>
       "global" :>
         "instanceTemplates" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates an instance template in the specified project using the data
-- that is included in the request.
--
-- /See:/ 'instanceTemplatesInsert'' smart constructor.
data InstanceTemplatesInsert' = InstanceTemplatesInsert'
    { _itiQuotaUser   :: !(Maybe Text)
    , _itiPrettyPrint :: !Bool
    , _itiProject     :: !Text
    , _itiUserIp      :: !(Maybe Text)
    , _itiKey         :: !(Maybe Text)
    , _itiOauthToken  :: !(Maybe Text)
    , _itiFields      :: !(Maybe Text)
    , _itiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplatesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itiQuotaUser'
--
-- * 'itiPrettyPrint'
--
-- * 'itiProject'
--
-- * 'itiUserIp'
--
-- * 'itiKey'
--
-- * 'itiOauthToken'
--
-- * 'itiFields'
--
-- * 'itiAlt'
instanceTemplatesInsert'
    :: Text -- ^ 'project'
    -> InstanceTemplatesInsert'
instanceTemplatesInsert' pItiProject_ =
    InstanceTemplatesInsert'
    { _itiQuotaUser = Nothing
    , _itiPrettyPrint = True
    , _itiProject = pItiProject_
    , _itiUserIp = Nothing
    , _itiKey = Nothing
    , _itiOauthToken = Nothing
    , _itiFields = Nothing
    , _itiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
itiQuotaUser :: Lens' InstanceTemplatesInsert' (Maybe Text)
itiQuotaUser
  = lens _itiQuotaUser (\ s a -> s{_itiQuotaUser = a})

-- | Returns response with indentations and line breaks.
itiPrettyPrint :: Lens' InstanceTemplatesInsert' Bool
itiPrettyPrint
  = lens _itiPrettyPrint
      (\ s a -> s{_itiPrettyPrint = a})

-- | The project ID for this request.
itiProject :: Lens' InstanceTemplatesInsert' Text
itiProject
  = lens _itiProject (\ s a -> s{_itiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
itiUserIp :: Lens' InstanceTemplatesInsert' (Maybe Text)
itiUserIp
  = lens _itiUserIp (\ s a -> s{_itiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
itiKey :: Lens' InstanceTemplatesInsert' (Maybe Text)
itiKey = lens _itiKey (\ s a -> s{_itiKey = a})

-- | OAuth 2.0 token for the current user.
itiOauthToken :: Lens' InstanceTemplatesInsert' (Maybe Text)
itiOauthToken
  = lens _itiOauthToken
      (\ s a -> s{_itiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
itiFields :: Lens' InstanceTemplatesInsert' (Maybe Text)
itiFields
  = lens _itiFields (\ s a -> s{_itiFields = a})

-- | Data format for the response.
itiAlt :: Lens' InstanceTemplatesInsert' Alt
itiAlt = lens _itiAlt (\ s a -> s{_itiAlt = a})

instance GoogleRequest InstanceTemplatesInsert' where
        type Rs InstanceTemplatesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceTemplatesInsert'{..}
          = go _itiQuotaUser (Just _itiPrettyPrint) _itiProject
              _itiUserIp
              _itiKey
              _itiOauthToken
              _itiFields
              (Just _itiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceTemplatesInsertResource)
                      r
                      u
