{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    , itdUserIP
    , itdInstanceTemplate
    , itdKey
    , itdOAuthToken
    , itdFields
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
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified instance template.
--
-- /See:/ 'instanceTemplatesDelete'' smart constructor.
data InstanceTemplatesDelete' = InstanceTemplatesDelete'
    { _itdQuotaUser        :: !(Maybe Text)
    , _itdPrettyPrint      :: !Bool
    , _itdProject          :: !Text
    , _itdUserIP           :: !(Maybe Text)
    , _itdInstanceTemplate :: !Text
    , _itdKey              :: !(Maybe Key)
    , _itdOAuthToken       :: !(Maybe OAuthToken)
    , _itdFields           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'itdUserIP'
--
-- * 'itdInstanceTemplate'
--
-- * 'itdKey'
--
-- * 'itdOAuthToken'
--
-- * 'itdFields'
instanceTemplatesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceTemplate'
    -> InstanceTemplatesDelete'
instanceTemplatesDelete' pItdProject_ pItdInstanceTemplate_ =
    InstanceTemplatesDelete'
    { _itdQuotaUser = Nothing
    , _itdPrettyPrint = True
    , _itdProject = pItdProject_
    , _itdUserIP = Nothing
    , _itdInstanceTemplate = pItdInstanceTemplate_
    , _itdKey = Nothing
    , _itdOAuthToken = Nothing
    , _itdFields = Nothing
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
itdUserIP :: Lens' InstanceTemplatesDelete' (Maybe Text)
itdUserIP
  = lens _itdUserIP (\ s a -> s{_itdUserIP = a})

-- | The name of the instance template to delete.
itdInstanceTemplate :: Lens' InstanceTemplatesDelete' Text
itdInstanceTemplate
  = lens _itdInstanceTemplate
      (\ s a -> s{_itdInstanceTemplate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
itdKey :: Lens' InstanceTemplatesDelete' (Maybe Key)
itdKey = lens _itdKey (\ s a -> s{_itdKey = a})

-- | OAuth 2.0 token for the current user.
itdOAuthToken :: Lens' InstanceTemplatesDelete' (Maybe OAuthToken)
itdOAuthToken
  = lens _itdOAuthToken
      (\ s a -> s{_itdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
itdFields :: Lens' InstanceTemplatesDelete' (Maybe Text)
itdFields
  = lens _itdFields (\ s a -> s{_itdFields = a})

instance GoogleAuth InstanceTemplatesDelete' where
        authKey = itdKey . _Just
        authToken = itdOAuthToken . _Just

instance GoogleRequest InstanceTemplatesDelete' where
        type Rs InstanceTemplatesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceTemplatesDelete'{..}
          = go _itdProject _itdInstanceTemplate _itdQuotaUser
              (Just _itdPrettyPrint)
              _itdUserIP
              _itdFields
              _itdKey
              _itdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceTemplatesDeleteResource)
                      r
                      u
