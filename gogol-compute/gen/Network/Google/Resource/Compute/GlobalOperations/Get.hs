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
-- Module      : Network.Google.Resource.Compute.GlobalOperations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the specified Operations resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalOperationsGet@.
module Network.Google.Resource.Compute.GlobalOperations.Get
    (
    -- * REST Resource
      GlobalOperationsGetResource

    -- * Creating a Request
    , globalOperationsGet'
    , GlobalOperationsGet'

    -- * Request Lenses
    , gogQuotaUser
    , gogPrettyPrint
    , gogProject
    , gogOperation
    , gogUserIP
    , gogKey
    , gogOAuthToken
    , gogFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalOperationsGet@ which the
-- 'GlobalOperationsGet'' request conforms to.
type GlobalOperationsGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Retrieves the specified Operations resource.
--
-- /See:/ 'globalOperationsGet'' smart constructor.
data GlobalOperationsGet' = GlobalOperationsGet'
    { _gogQuotaUser   :: !(Maybe Text)
    , _gogPrettyPrint :: !Bool
    , _gogProject     :: !Text
    , _gogOperation   :: !Text
    , _gogUserIP      :: !(Maybe Text)
    , _gogKey         :: !(Maybe AuthKey)
    , _gogOAuthToken  :: !(Maybe OAuthToken)
    , _gogFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalOperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gogQuotaUser'
--
-- * 'gogPrettyPrint'
--
-- * 'gogProject'
--
-- * 'gogOperation'
--
-- * 'gogUserIP'
--
-- * 'gogKey'
--
-- * 'gogOAuthToken'
--
-- * 'gogFields'
globalOperationsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> GlobalOperationsGet'
globalOperationsGet' pGogProject_ pGogOperation_ =
    GlobalOperationsGet'
    { _gogQuotaUser = Nothing
    , _gogPrettyPrint = True
    , _gogProject = pGogProject_
    , _gogOperation = pGogOperation_
    , _gogUserIP = Nothing
    , _gogKey = Nothing
    , _gogOAuthToken = Nothing
    , _gogFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gogQuotaUser :: Lens' GlobalOperationsGet' (Maybe Text)
gogQuotaUser
  = lens _gogQuotaUser (\ s a -> s{_gogQuotaUser = a})

-- | Returns response with indentations and line breaks.
gogPrettyPrint :: Lens' GlobalOperationsGet' Bool
gogPrettyPrint
  = lens _gogPrettyPrint
      (\ s a -> s{_gogPrettyPrint = a})

-- | Project ID for this request.
gogProject :: Lens' GlobalOperationsGet' Text
gogProject
  = lens _gogProject (\ s a -> s{_gogProject = a})

-- | Name of the Operations resource to return.
gogOperation :: Lens' GlobalOperationsGet' Text
gogOperation
  = lens _gogOperation (\ s a -> s{_gogOperation = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gogUserIP :: Lens' GlobalOperationsGet' (Maybe Text)
gogUserIP
  = lens _gogUserIP (\ s a -> s{_gogUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gogKey :: Lens' GlobalOperationsGet' (Maybe AuthKey)
gogKey = lens _gogKey (\ s a -> s{_gogKey = a})

-- | OAuth 2.0 token for the current user.
gogOAuthToken :: Lens' GlobalOperationsGet' (Maybe OAuthToken)
gogOAuthToken
  = lens _gogOAuthToken
      (\ s a -> s{_gogOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gogFields :: Lens' GlobalOperationsGet' (Maybe Text)
gogFields
  = lens _gogFields (\ s a -> s{_gogFields = a})

instance GoogleAuth GlobalOperationsGet' where
        authKey = gogKey . _Just
        authToken = gogOAuthToken . _Just

instance GoogleRequest GlobalOperationsGet' where
        type Rs GlobalOperationsGet' = Operation
        request = requestWith computeRequest
        requestWith rq GlobalOperationsGet'{..}
          = go _gogProject _gogOperation _gogQuotaUser
              (Just _gogPrettyPrint)
              _gogUserIP
              _gogFields
              _gogKey
              _gogOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy GlobalOperationsGetResource)
                      rq
