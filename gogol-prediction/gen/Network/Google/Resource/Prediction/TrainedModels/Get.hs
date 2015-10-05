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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Check training status of your model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedModelsGet@.
module Network.Google.Resource.Prediction.TrainedModels.Get
    (
    -- * REST Resource
      TrainedModelsGetResource

    -- * Creating a Request
    , trainedModelsGet'
    , TrainedModelsGet'

    -- * Request Lenses
    , tmgQuotaUser
    , tmgPrettyPrint
    , tmgProject
    , tmgUserIP
    , tmgKey
    , tmgId
    , tmgOAuthToken
    , tmgFields
    ) where

import Network.Google.Prediction.Types
import Network.Google.Prelude

-- | A resource alias for @PredictionTrainedModelsGet@ which the
-- 'TrainedModelsGet'' request conforms to.
type TrainedModelsGetResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Insert2

-- | Check training status of your model.
--
-- /See:/ 'trainedModelsGet'' smart constructor.
data TrainedModelsGet' = TrainedModelsGet'
    { _tmgQuotaUser :: !(Maybe Text)
    , _tmgPrettyPrint :: !Bool
    , _tmgProject :: !Text
    , _tmgUserIP :: !(Maybe Text)
    , _tmgKey :: !(Maybe Key)
    , _tmgId :: !Text
    , _tmgOAuthToken :: !(Maybe OAuthToken)
    , _tmgFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmgQuotaUser'
--
-- * 'tmgPrettyPrint'
--
-- * 'tmgProject'
--
-- * 'tmgUserIP'
--
-- * 'tmgKey'
--
-- * 'tmgId'
--
-- * 'tmgOAuthToken'
--
-- * 'tmgFields'
trainedModelsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'id'
    -> TrainedModelsGet'
trainedModelsGet' pTmgProject_ pTmgId_ = 
    TrainedModelsGet'
    { _tmgQuotaUser = Nothing
    , _tmgPrettyPrint = True
    , _tmgProject = pTmgProject_
    , _tmgUserIP = Nothing
    , _tmgKey = Nothing
    , _tmgId = pTmgId_
    , _tmgOAuthToken = Nothing
    , _tmgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tmgQuotaUser :: Lens' TrainedModelsGet' (Maybe Text)
tmgQuotaUser
  = lens _tmgQuotaUser (\ s a -> s{_tmgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tmgPrettyPrint :: Lens' TrainedModelsGet' Bool
tmgPrettyPrint
  = lens _tmgPrettyPrint
      (\ s a -> s{_tmgPrettyPrint = a})

-- | The project associated with the model.
tmgProject :: Lens' TrainedModelsGet' Text
tmgProject
  = lens _tmgProject (\ s a -> s{_tmgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tmgUserIP :: Lens' TrainedModelsGet' (Maybe Text)
tmgUserIP
  = lens _tmgUserIP (\ s a -> s{_tmgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tmgKey :: Lens' TrainedModelsGet' (Maybe Key)
tmgKey = lens _tmgKey (\ s a -> s{_tmgKey = a})

-- | The unique name for the predictive model.
tmgId :: Lens' TrainedModelsGet' Text
tmgId = lens _tmgId (\ s a -> s{_tmgId = a})

-- | OAuth 2.0 token for the current user.
tmgOAuthToken :: Lens' TrainedModelsGet' (Maybe OAuthToken)
tmgOAuthToken
  = lens _tmgOAuthToken
      (\ s a -> s{_tmgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tmgFields :: Lens' TrainedModelsGet' (Maybe Text)
tmgFields
  = lens _tmgFields (\ s a -> s{_tmgFields = a})

instance GoogleAuth TrainedModelsGet' where
        authKey = tmgKey . _Just
        authToken = tmgOAuthToken . _Just

instance GoogleRequest TrainedModelsGet' where
        type Rs TrainedModelsGet' = Insert2
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedModelsGet'{..}
          = go _tmgProject _tmgId _tmgQuotaUser
              (Just _tmgPrettyPrint)
              _tmgUserIP
              _tmgFields
              _tmgKey
              _tmgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedModelsGetResource)
                      r
                      u
