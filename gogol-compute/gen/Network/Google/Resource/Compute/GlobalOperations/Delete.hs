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
-- Module      : Network.Google.Resource.Compute.GlobalOperations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified Operations resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalOperationsDelete@.
module Network.Google.Resource.Compute.GlobalOperations.Delete
    (
    -- * REST Resource
      GlobalOperationsDeleteResource

    -- * Creating a Request
    , globalOperationsDelete'
    , GlobalOperationsDelete'

    -- * Request Lenses
    , godQuotaUser
    , godPrettyPrint
    , godProject
    , godOperation
    , godUserIP
    , godKey
    , godOAuthToken
    , godFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalOperationsDelete@ which the
-- 'GlobalOperationsDelete'' request conforms to.
type GlobalOperationsDeleteResource =
     Capture "project" Text :>
       "global" :>
         "operations" :>
           Capture "operation" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified Operations resource.
--
-- /See:/ 'globalOperationsDelete'' smart constructor.
data GlobalOperationsDelete' = GlobalOperationsDelete'
    { _godQuotaUser   :: !(Maybe Text)
    , _godPrettyPrint :: !Bool
    , _godProject     :: !Text
    , _godOperation   :: !Text
    , _godUserIP      :: !(Maybe Text)
    , _godKey         :: !(Maybe AuthKey)
    , _godOAuthToken  :: !(Maybe OAuthToken)
    , _godFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalOperationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'godQuotaUser'
--
-- * 'godPrettyPrint'
--
-- * 'godProject'
--
-- * 'godOperation'
--
-- * 'godUserIP'
--
-- * 'godKey'
--
-- * 'godOAuthToken'
--
-- * 'godFields'
globalOperationsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> GlobalOperationsDelete'
globalOperationsDelete' pGodProject_ pGodOperation_ =
    GlobalOperationsDelete'
    { _godQuotaUser = Nothing
    , _godPrettyPrint = True
    , _godProject = pGodProject_
    , _godOperation = pGodOperation_
    , _godUserIP = Nothing
    , _godKey = Nothing
    , _godOAuthToken = Nothing
    , _godFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
godQuotaUser :: Lens' GlobalOperationsDelete' (Maybe Text)
godQuotaUser
  = lens _godQuotaUser (\ s a -> s{_godQuotaUser = a})

-- | Returns response with indentations and line breaks.
godPrettyPrint :: Lens' GlobalOperationsDelete' Bool
godPrettyPrint
  = lens _godPrettyPrint
      (\ s a -> s{_godPrettyPrint = a})

-- | Project ID for this request.
godProject :: Lens' GlobalOperationsDelete' Text
godProject
  = lens _godProject (\ s a -> s{_godProject = a})

-- | Name of the Operations resource to delete.
godOperation :: Lens' GlobalOperationsDelete' Text
godOperation
  = lens _godOperation (\ s a -> s{_godOperation = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
godUserIP :: Lens' GlobalOperationsDelete' (Maybe Text)
godUserIP
  = lens _godUserIP (\ s a -> s{_godUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
godKey :: Lens' GlobalOperationsDelete' (Maybe AuthKey)
godKey = lens _godKey (\ s a -> s{_godKey = a})

-- | OAuth 2.0 token for the current user.
godOAuthToken :: Lens' GlobalOperationsDelete' (Maybe OAuthToken)
godOAuthToken
  = lens _godOAuthToken
      (\ s a -> s{_godOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
godFields :: Lens' GlobalOperationsDelete' (Maybe Text)
godFields
  = lens _godFields (\ s a -> s{_godFields = a})

instance GoogleAuth GlobalOperationsDelete' where
        authKey = godKey . _Just
        authToken = godOAuthToken . _Just

instance GoogleRequest GlobalOperationsDelete' where
        type Rs GlobalOperationsDelete' = ()
        request = requestWithRoute defReq computeURL
        requestWithRoute r u GlobalOperationsDelete'{..}
          = go _godProject _godOperation _godQuotaUser
              (Just _godPrettyPrint)
              _godUserIP
              _godFields
              _godKey
              _godOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalOperationsDeleteResource)
                      r
                      u
