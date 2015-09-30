{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Compute.GlobalOperations.Get
    (
    -- * REST Resource
      GlobalOperationsGetAPI

    -- * Creating a Request
    , globalOperationsGet
    , GlobalOperationsGet

    -- * Request Lenses
    , gogQuotaUser
    , gogPrettyPrint
    , gogProject
    , gogOperation
    , gogUserIp
    , gogKey
    , gogOauthToken
    , gogFields
    , gogAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalOperationsGet@ which the
-- 'GlobalOperationsGet' request conforms to.
type GlobalOperationsGetAPI =
     Capture "project" Text :>
       "global" :>
         "operations" :>
           Capture "operation" Text :> Get '[JSON] Operation

-- | Retrieves the specified Operations resource.
--
-- /See:/ 'globalOperationsGet' smart constructor.
data GlobalOperationsGet = GlobalOperationsGet
    { _gogQuotaUser   :: !(Maybe Text)
    , _gogPrettyPrint :: !Bool
    , _gogProject     :: !Text
    , _gogOperation   :: !Text
    , _gogUserIp      :: !(Maybe Text)
    , _gogKey         :: !(Maybe Text)
    , _gogOauthToken  :: !(Maybe Text)
    , _gogFields      :: !(Maybe Text)
    , _gogAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'gogUserIp'
--
-- * 'gogKey'
--
-- * 'gogOauthToken'
--
-- * 'gogFields'
--
-- * 'gogAlt'
globalOperationsGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> GlobalOperationsGet
globalOperationsGet pGogProject_ pGogOperation_ =
    GlobalOperationsGet
    { _gogQuotaUser = Nothing
    , _gogPrettyPrint = True
    , _gogProject = pGogProject_
    , _gogOperation = pGogOperation_
    , _gogUserIp = Nothing
    , _gogKey = Nothing
    , _gogOauthToken = Nothing
    , _gogFields = Nothing
    , _gogAlt = "json"
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
gogUserIp :: Lens' GlobalOperationsGet' (Maybe Text)
gogUserIp
  = lens _gogUserIp (\ s a -> s{_gogUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gogKey :: Lens' GlobalOperationsGet' (Maybe Text)
gogKey = lens _gogKey (\ s a -> s{_gogKey = a})

-- | OAuth 2.0 token for the current user.
gogOauthToken :: Lens' GlobalOperationsGet' (Maybe Text)
gogOauthToken
  = lens _gogOauthToken
      (\ s a -> s{_gogOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gogFields :: Lens' GlobalOperationsGet' (Maybe Text)
gogFields
  = lens _gogFields (\ s a -> s{_gogFields = a})

-- | Data format for the response.
gogAlt :: Lens' GlobalOperationsGet' Text
gogAlt = lens _gogAlt (\ s a -> s{_gogAlt = a})

instance GoogleRequest GlobalOperationsGet' where
        type Rs GlobalOperationsGet' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u GlobalOperationsGet{..}
          = go _gogQuotaUser _gogPrettyPrint _gogProject
              _gogOperation
              _gogUserIp
              _gogKey
              _gogOauthToken
              _gogFields
              _gogAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalOperationsGetAPI)
                      r
                      u
