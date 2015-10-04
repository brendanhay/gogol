{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Prediction.HostedModels.Predict
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Submit input and request an output against a hosted model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionHostedModelsPredict@.
module Network.Google.Resource.Prediction.HostedModels.Predict
    (
    -- * REST Resource
      HostedModelsPredictResource

    -- * Creating a Request
    , hostedModelsPredict'
    , HostedModelsPredict'

    -- * Request Lenses
    , hmpQuotaUser
    , hmpPrettyPrint
    , hmpProject
    , hmpUserIP
    , hmpPayload
    , hmpKey
    , hmpOAuthToken
    , hmpFields
    , hmpHostedModelName
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionHostedModelsPredict@ which the
-- 'HostedModelsPredict'' request conforms to.
type HostedModelsPredictResource =
     Capture "project" Text :>
       "hostedmodels" :>
         Capture "hostedModelName" Text :>
           "predict" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Input :> Post '[JSON] Output

-- | Submit input and request an output against a hosted model.
--
-- /See:/ 'hostedModelsPredict'' smart constructor.
data HostedModelsPredict' = HostedModelsPredict'
    { _hmpQuotaUser       :: !(Maybe Text)
    , _hmpPrettyPrint     :: !Bool
    , _hmpProject         :: !Text
    , _hmpUserIP          :: !(Maybe Text)
    , _hmpPayload         :: !Input
    , _hmpKey             :: !(Maybe Key)
    , _hmpOAuthToken      :: !(Maybe OAuthToken)
    , _hmpFields          :: !(Maybe Text)
    , _hmpHostedModelName :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HostedModelsPredict'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmpQuotaUser'
--
-- * 'hmpPrettyPrint'
--
-- * 'hmpProject'
--
-- * 'hmpUserIP'
--
-- * 'hmpPayload'
--
-- * 'hmpKey'
--
-- * 'hmpOAuthToken'
--
-- * 'hmpFields'
--
-- * 'hmpHostedModelName'
hostedModelsPredict'
    :: Text -- ^ 'project'
    -> Input -- ^ 'payload'
    -> Text -- ^ 'hostedModelName'
    -> HostedModelsPredict'
hostedModelsPredict' pHmpProject_ pHmpPayload_ pHmpHostedModelName_ =
    HostedModelsPredict'
    { _hmpQuotaUser = Nothing
    , _hmpPrettyPrint = True
    , _hmpProject = pHmpProject_
    , _hmpUserIP = Nothing
    , _hmpPayload = pHmpPayload_
    , _hmpKey = Nothing
    , _hmpOAuthToken = Nothing
    , _hmpFields = Nothing
    , _hmpHostedModelName = pHmpHostedModelName_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
hmpQuotaUser :: Lens' HostedModelsPredict' (Maybe Text)
hmpQuotaUser
  = lens _hmpQuotaUser (\ s a -> s{_hmpQuotaUser = a})

-- | Returns response with indentations and line breaks.
hmpPrettyPrint :: Lens' HostedModelsPredict' Bool
hmpPrettyPrint
  = lens _hmpPrettyPrint
      (\ s a -> s{_hmpPrettyPrint = a})

-- | The project associated with the model.
hmpProject :: Lens' HostedModelsPredict' Text
hmpProject
  = lens _hmpProject (\ s a -> s{_hmpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
hmpUserIP :: Lens' HostedModelsPredict' (Maybe Text)
hmpUserIP
  = lens _hmpUserIP (\ s a -> s{_hmpUserIP = a})

-- | Multipart request metadata.
hmpPayload :: Lens' HostedModelsPredict' Input
hmpPayload
  = lens _hmpPayload (\ s a -> s{_hmpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
hmpKey :: Lens' HostedModelsPredict' (Maybe Key)
hmpKey = lens _hmpKey (\ s a -> s{_hmpKey = a})

-- | OAuth 2.0 token for the current user.
hmpOAuthToken :: Lens' HostedModelsPredict' (Maybe OAuthToken)
hmpOAuthToken
  = lens _hmpOAuthToken
      (\ s a -> s{_hmpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
hmpFields :: Lens' HostedModelsPredict' (Maybe Text)
hmpFields
  = lens _hmpFields (\ s a -> s{_hmpFields = a})

-- | The name of a hosted model.
hmpHostedModelName :: Lens' HostedModelsPredict' Text
hmpHostedModelName
  = lens _hmpHostedModelName
      (\ s a -> s{_hmpHostedModelName = a})

instance GoogleAuth HostedModelsPredict' where
        authKey = hmpKey . _Just
        authToken = hmpOAuthToken . _Just

instance GoogleRequest HostedModelsPredict' where
        type Rs HostedModelsPredict' = Output
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u HostedModelsPredict'{..}
          = go _hmpProject _hmpHostedModelName _hmpQuotaUser
              (Just _hmpPrettyPrint)
              _hmpUserIP
              _hmpFields
              _hmpKey
              _hmpOAuthToken
              (Just AltJSON)
              _hmpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy HostedModelsPredictResource)
                      r
                      u
