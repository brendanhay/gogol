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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified instance template.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceTemplatesDelete@.
module Network.Google.Resource.Compute.InstanceTemplates.Delete
    (
    -- * REST Resource
      InstanceTemplatesDeleteResource

    -- * Creating a Request
    , instanceTemplatesDelete'
    , InstanceTemplatesDelete'

    -- * Request Lenses
    , itdQuotaUser
    , itdPrettyPrint
    , itdProject
    , itdUserIp
    , itdInstanceTemplate
    , itdKey
    , itdOauthToken
    , itdFields
    , itdAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceTemplatesDelete@ which the
-- 'InstanceTemplatesDelete'' request conforms to.
type InstanceTemplatesDeleteResource =
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
                         QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified instance template.
--
-- /See:/ 'instanceTemplatesDelete'' smart constructor.
data InstanceTemplatesDelete' = InstanceTemplatesDelete'
    { _itdQuotaUser        :: !(Maybe Text)
    , _itdPrettyPrint      :: !Bool
    , _itdProject          :: !Text
    , _itdUserIp           :: !(Maybe Text)
    , _itdInstanceTemplate :: !Text
    , _itdKey              :: !(Maybe Text)
    , _itdOauthToken       :: !(Maybe Text)
    , _itdFields           :: !(Maybe Text)
    , _itdAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplatesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itdQuotaUser'
--
-- * 'itdPrettyPrint'
--
-- * 'itdProject'
--
-- * 'itdUserIp'
--
-- * 'itdInstanceTemplate'
--
-- * 'itdKey'
--
-- * 'itdOauthToken'
--
-- * 'itdFields'
--
-- * 'itdAlt'
instanceTemplatesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceTemplate'
    -> InstanceTemplatesDelete'
instanceTemplatesDelete' pItdProject_ pItdInstanceTemplate_ =
    InstanceTemplatesDelete'
    { _itdQuotaUser = Nothing
    , _itdPrettyPrint = True
    , _itdProject = pItdProject_
    , _itdUserIp = Nothing
    , _itdInstanceTemplate = pItdInstanceTemplate_
    , _itdKey = Nothing
    , _itdOauthToken = Nothing
    , _itdFields = Nothing
    , _itdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
itdQuotaUser :: Lens' InstanceTemplatesDelete' (Maybe Text)
itdQuotaUser
  = lens _itdQuotaUser (\ s a -> s{_itdQuotaUser = a})

-- | Returns response with indentations and line breaks.
itdPrettyPrint :: Lens' InstanceTemplatesDelete' Bool
itdPrettyPrint
  = lens _itdPrettyPrint
      (\ s a -> s{_itdPrettyPrint = a})

-- | The project ID for this request.
itdProject :: Lens' InstanceTemplatesDelete' Text
itdProject
  = lens _itdProject (\ s a -> s{_itdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
itdUserIp :: Lens' InstanceTemplatesDelete' (Maybe Text)
itdUserIp
  = lens _itdUserIp (\ s a -> s{_itdUserIp = a})

-- | The name of the instance template to delete.
itdInstanceTemplate :: Lens' InstanceTemplatesDelete' Text
itdInstanceTemplate
  = lens _itdInstanceTemplate
      (\ s a -> s{_itdInstanceTemplate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
itdKey :: Lens' InstanceTemplatesDelete' (Maybe Text)
itdKey = lens _itdKey (\ s a -> s{_itdKey = a})

-- | OAuth 2.0 token for the current user.
itdOauthToken :: Lens' InstanceTemplatesDelete' (Maybe Text)
itdOauthToken
  = lens _itdOauthToken
      (\ s a -> s{_itdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
itdFields :: Lens' InstanceTemplatesDelete' (Maybe Text)
itdFields
  = lens _itdFields (\ s a -> s{_itdFields = a})

-- | Data format for the response.
itdAlt :: Lens' InstanceTemplatesDelete' Alt
itdAlt = lens _itdAlt (\ s a -> s{_itdAlt = a})

instance GoogleRequest InstanceTemplatesDelete' where
        type Rs InstanceTemplatesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceTemplatesDelete'{..}
          = go _itdQuotaUser (Just _itdPrettyPrint) _itdProject
              _itdUserIp
              _itdInstanceTemplate
              _itdKey
              _itdOauthToken
              _itdFields
              (Just _itdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceTemplatesDeleteResource)
                      r
                      u
