{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.GlobalOperations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified Operations resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalOperations.delete@.
module Network.Google.API.Compute.GlobalOperations.Delete
    (
    -- * REST Resource
      GlobalOperationsDeleteAPI

    -- * Creating a Request
    , globalOperationsDelete'
    , GlobalOperationsDelete'

    -- * Request Lenses
    , godQuotaUser
    , godPrettyPrint
    , godProject
    , godOperation
    , godUserIp
    , godKey
    , godOauthToken
    , godFields
    , godAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.globalOperations.delete which the
-- 'GlobalOperationsDelete'' request conforms to.
type GlobalOperationsDeleteAPI =
     Capture "project" Text :>
       "global" :>
         "operations" :>
           Capture "operation" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the specified Operations resource.
--
-- /See:/ 'globalOperationsDelete'' smart constructor.
data GlobalOperationsDelete' = GlobalOperationsDelete'
    { _godQuotaUser   :: !(Maybe Text)
    , _godPrettyPrint :: !Bool
    , _godProject     :: !Text
    , _godOperation   :: !Text
    , _godUserIp      :: !(Maybe Text)
    , _godKey         :: !(Maybe Text)
    , _godOauthToken  :: !(Maybe Text)
    , _godFields      :: !(Maybe Text)
    , _godAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'godUserIp'
--
-- * 'godKey'
--
-- * 'godOauthToken'
--
-- * 'godFields'
--
-- * 'godAlt'
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
    , _godUserIp = Nothing
    , _godKey = Nothing
    , _godOauthToken = Nothing
    , _godFields = Nothing
    , _godAlt = JSON
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
godUserIp :: Lens' GlobalOperationsDelete' (Maybe Text)
godUserIp
  = lens _godUserIp (\ s a -> s{_godUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
godKey :: Lens' GlobalOperationsDelete' (Maybe Text)
godKey = lens _godKey (\ s a -> s{_godKey = a})

-- | OAuth 2.0 token for the current user.
godOauthToken :: Lens' GlobalOperationsDelete' (Maybe Text)
godOauthToken
  = lens _godOauthToken
      (\ s a -> s{_godOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
godFields :: Lens' GlobalOperationsDelete' (Maybe Text)
godFields
  = lens _godFields (\ s a -> s{_godFields = a})

-- | Data format for the response.
godAlt :: Lens' GlobalOperationsDelete' Alt
godAlt = lens _godAlt (\ s a -> s{_godAlt = a})

instance GoogleRequest GlobalOperationsDelete' where
        type Rs GlobalOperationsDelete' = ()
        request = requestWithRoute defReq computeURL
        requestWithRoute r u GlobalOperationsDelete'{..}
          = go _godQuotaUser (Just _godPrettyPrint) _godProject
              _godOperation
              _godUserIp
              _godKey
              _godOauthToken
              _godFields
              (Just _godAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalOperationsDeleteAPI)
                      r
                      u
