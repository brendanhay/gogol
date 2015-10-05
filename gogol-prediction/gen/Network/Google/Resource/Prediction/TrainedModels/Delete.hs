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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a trained model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedModelsDelete@.
module Network.Google.Resource.Prediction.TrainedModels.Delete
    (
    -- * REST Resource
      TrainedModelsDeleteResource

    -- * Creating a Request
    , trainedModelsDelete'
    , TrainedModelsDelete'

    -- * Request Lenses
    , tmdQuotaUser
    , tmdPrettyPrint
    , tmdProject
    , tmdUserIP
    , tmdKey
    , tmdId
    , tmdOAuthToken
    , tmdFields
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedModelsDelete@ which the
-- 'TrainedModelsDelete'' request conforms to.
type TrainedModelsDeleteResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a trained model.
--
-- /See:/ 'trainedModelsDelete'' smart constructor.
data TrainedModelsDelete' = TrainedModelsDelete'
    { _tmdQuotaUser   :: !(Maybe Text)
    , _tmdPrettyPrint :: !Bool
    , _tmdProject     :: !Text
    , _tmdUserIP      :: !(Maybe Text)
    , _tmdKey         :: !(Maybe AuthKey)
    , _tmdId          :: !Text
    , _tmdOAuthToken  :: !(Maybe OAuthToken)
    , _tmdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmdQuotaUser'
--
-- * 'tmdPrettyPrint'
--
-- * 'tmdProject'
--
-- * 'tmdUserIP'
--
-- * 'tmdKey'
--
-- * 'tmdId'
--
-- * 'tmdOAuthToken'
--
-- * 'tmdFields'
trainedModelsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'id'
    -> TrainedModelsDelete'
trainedModelsDelete' pTmdProject_ pTmdId_ =
    TrainedModelsDelete'
    { _tmdQuotaUser = Nothing
    , _tmdPrettyPrint = True
    , _tmdProject = pTmdProject_
    , _tmdUserIP = Nothing
    , _tmdKey = Nothing
    , _tmdId = pTmdId_
    , _tmdOAuthToken = Nothing
    , _tmdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tmdQuotaUser :: Lens' TrainedModelsDelete' (Maybe Text)
tmdQuotaUser
  = lens _tmdQuotaUser (\ s a -> s{_tmdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tmdPrettyPrint :: Lens' TrainedModelsDelete' Bool
tmdPrettyPrint
  = lens _tmdPrettyPrint
      (\ s a -> s{_tmdPrettyPrint = a})

-- | The project associated with the model.
tmdProject :: Lens' TrainedModelsDelete' Text
tmdProject
  = lens _tmdProject (\ s a -> s{_tmdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tmdUserIP :: Lens' TrainedModelsDelete' (Maybe Text)
tmdUserIP
  = lens _tmdUserIP (\ s a -> s{_tmdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tmdKey :: Lens' TrainedModelsDelete' (Maybe AuthKey)
tmdKey = lens _tmdKey (\ s a -> s{_tmdKey = a})

-- | The unique name for the predictive model.
tmdId :: Lens' TrainedModelsDelete' Text
tmdId = lens _tmdId (\ s a -> s{_tmdId = a})

-- | OAuth 2.0 token for the current user.
tmdOAuthToken :: Lens' TrainedModelsDelete' (Maybe OAuthToken)
tmdOAuthToken
  = lens _tmdOAuthToken
      (\ s a -> s{_tmdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tmdFields :: Lens' TrainedModelsDelete' (Maybe Text)
tmdFields
  = lens _tmdFields (\ s a -> s{_tmdFields = a})

instance GoogleAuth TrainedModelsDelete' where
        authKey = tmdKey . _Just
        authToken = tmdOAuthToken . _Just

instance GoogleRequest TrainedModelsDelete' where
        type Rs TrainedModelsDelete' = ()
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedModelsDelete'{..}
          = go _tmdProject _tmdId _tmdQuotaUser
              (Just _tmdPrettyPrint)
              _tmdUserIP
              _tmdFields
              _tmdKey
              _tmdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedModelsDeleteResource)
                      r
                      u
