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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Train a Prediction API model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedModelsInsert@.
module Network.Google.Resource.Prediction.TrainedModels.Insert
    (
    -- * REST Resource
      TrainedModelsInsertResource

    -- * Creating a Request
    , trainedModelsInsert'
    , TrainedModelsInsert'

    -- * Request Lenses
    , tmiQuotaUser
    , tmiPrettyPrint
    , tmiProject
    , tmiUserIP
    , tmiPayload
    , tmiKey
    , tmiOAuthToken
    , tmiFields
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedModelsInsert@ which the
-- 'TrainedModelsInsert'' request conforms to.
type TrainedModelsInsertResource =
     Capture "project" Text :>
       "trainedmodels" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Insert :> Post '[JSON] Insert2

-- | Train a Prediction API model.
--
-- /See:/ 'trainedModelsInsert'' smart constructor.
data TrainedModelsInsert' = TrainedModelsInsert'
    { _tmiQuotaUser   :: !(Maybe Text)
    , _tmiPrettyPrint :: !Bool
    , _tmiProject     :: !Text
    , _tmiUserIP      :: !(Maybe Text)
    , _tmiPayload     :: !Insert
    , _tmiKey         :: !(Maybe Key)
    , _tmiOAuthToken  :: !(Maybe OAuthToken)
    , _tmiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmiQuotaUser'
--
-- * 'tmiPrettyPrint'
--
-- * 'tmiProject'
--
-- * 'tmiUserIP'
--
-- * 'tmiPayload'
--
-- * 'tmiKey'
--
-- * 'tmiOAuthToken'
--
-- * 'tmiFields'
trainedModelsInsert'
    :: Text -- ^ 'project'
    -> Insert -- ^ 'payload'
    -> TrainedModelsInsert'
trainedModelsInsert' pTmiProject_ pTmiPayload_ =
    TrainedModelsInsert'
    { _tmiQuotaUser = Nothing
    , _tmiPrettyPrint = True
    , _tmiProject = pTmiProject_
    , _tmiUserIP = Nothing
    , _tmiPayload = pTmiPayload_
    , _tmiKey = Nothing
    , _tmiOAuthToken = Nothing
    , _tmiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tmiQuotaUser :: Lens' TrainedModelsInsert' (Maybe Text)
tmiQuotaUser
  = lens _tmiQuotaUser (\ s a -> s{_tmiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tmiPrettyPrint :: Lens' TrainedModelsInsert' Bool
tmiPrettyPrint
  = lens _tmiPrettyPrint
      (\ s a -> s{_tmiPrettyPrint = a})

-- | The project associated with the model.
tmiProject :: Lens' TrainedModelsInsert' Text
tmiProject
  = lens _tmiProject (\ s a -> s{_tmiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tmiUserIP :: Lens' TrainedModelsInsert' (Maybe Text)
tmiUserIP
  = lens _tmiUserIP (\ s a -> s{_tmiUserIP = a})

-- | Multipart request metadata.
tmiPayload :: Lens' TrainedModelsInsert' Insert
tmiPayload
  = lens _tmiPayload (\ s a -> s{_tmiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tmiKey :: Lens' TrainedModelsInsert' (Maybe Key)
tmiKey = lens _tmiKey (\ s a -> s{_tmiKey = a})

-- | OAuth 2.0 token for the current user.
tmiOAuthToken :: Lens' TrainedModelsInsert' (Maybe OAuthToken)
tmiOAuthToken
  = lens _tmiOAuthToken
      (\ s a -> s{_tmiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tmiFields :: Lens' TrainedModelsInsert' (Maybe Text)
tmiFields
  = lens _tmiFields (\ s a -> s{_tmiFields = a})

instance GoogleAuth TrainedModelsInsert' where
        authKey = tmiKey . _Just
        authToken = tmiOAuthToken . _Just

instance GoogleRequest TrainedModelsInsert' where
        type Rs TrainedModelsInsert' = Insert2
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedModelsInsert'{..}
          = go _tmiProject _tmiQuotaUser (Just _tmiPrettyPrint)
              _tmiUserIP
              _tmiFields
              _tmiKey
              _tmiOAuthToken
              (Just AltJSON)
              _tmiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedModelsInsertResource)
                      r
                      u
