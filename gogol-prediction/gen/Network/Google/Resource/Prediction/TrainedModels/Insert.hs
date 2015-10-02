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
    , tmiInsert
    , tmiPrettyPrint
    , tmiProject
    , tmiUserIP
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
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Insert :> Post '[JSON] Insert2

-- | Train a Prediction API model.
--
-- /See:/ 'trainedModelsInsert'' smart constructor.
data TrainedModelsInsert' = TrainedModelsInsert'
    { _tmiQuotaUser   :: !(Maybe Text)
    , _tmiInsert      :: !Insert
    , _tmiPrettyPrint :: !Bool
    , _tmiProject     :: !Text
    , _tmiUserIP      :: !(Maybe Text)
    , _tmiKey         :: !(Maybe Key)
    , _tmiOAuthToken  :: !(Maybe OAuthToken)
    , _tmiFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmiQuotaUser'
--
-- * 'tmiInsert'
--
-- * 'tmiPrettyPrint'
--
-- * 'tmiProject'
--
-- * 'tmiUserIP'
--
-- * 'tmiKey'
--
-- * 'tmiOAuthToken'
--
-- * 'tmiFields'
trainedModelsInsert'
    :: Insert -- ^ 'Insert'
    -> Text -- ^ 'project'
    -> TrainedModelsInsert'
trainedModelsInsert' pTmiInsert_ pTmiProject_ =
    TrainedModelsInsert'
    { _tmiQuotaUser = Nothing
    , _tmiInsert = pTmiInsert_
    , _tmiPrettyPrint = True
    , _tmiProject = pTmiProject_
    , _tmiUserIP = Nothing
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

-- | Multipart request metadata.
tmiInsert :: Lens' TrainedModelsInsert' Insert
tmiInsert
  = lens _tmiInsert (\ s a -> s{_tmiInsert = a})

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
          = go _tmiQuotaUser (Just _tmiPrettyPrint) _tmiProject
              _tmiUserIP
              _tmiKey
              _tmiOAuthToken
              _tmiFields
              (Just AltJSON)
              _tmiInsert
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedModelsInsertResource)
                      r
                      u
