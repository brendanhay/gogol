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
-- Module      : Network.Google.Resource.Prediction.Trainedmodels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List available models.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedmodelsList@.
module Network.Google.Resource.Prediction.Trainedmodels.List
    (
    -- * REST Resource
      TrainedmodelsListResource

    -- * Creating a Request
    , trainedmodelsList'
    , TrainedmodelsList'

    -- * Request Lenses
    , tlQuotaUser
    , tlPrettyPrint
    , tlProject
    , tlUserIp
    , tlKey
    , tlPageToken
    , tlOauthToken
    , tlMaxResults
    , tlFields
    , tlAlt
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedmodelsList@ which the
-- 'TrainedmodelsList'' request conforms to.
type TrainedmodelsListResource =
     Capture "project" Text :>
       "trainedmodels" :>
         "list" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] List

-- | List available models.
--
-- /See:/ 'trainedmodelsList'' smart constructor.
data TrainedmodelsList' = TrainedmodelsList'
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlProject     :: !Text
    , _tlUserIp      :: !(Maybe Text)
    , _tlKey         :: !(Maybe Text)
    , _tlPageToken   :: !(Maybe Text)
    , _tlOauthToken  :: !(Maybe Text)
    , _tlMaxResults  :: !(Maybe Word32)
    , _tlFields      :: !(Maybe Text)
    , _tlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedmodelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlProject'
--
-- * 'tlUserIp'
--
-- * 'tlKey'
--
-- * 'tlPageToken'
--
-- * 'tlOauthToken'
--
-- * 'tlMaxResults'
--
-- * 'tlFields'
--
-- * 'tlAlt'
trainedmodelsList'
    :: Text -- ^ 'project'
    -> TrainedmodelsList'
trainedmodelsList' pTlProject_ =
    TrainedmodelsList'
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlProject = pTlProject_
    , _tlUserIp = Nothing
    , _tlKey = Nothing
    , _tlPageToken = Nothing
    , _tlOauthToken = Nothing
    , _tlMaxResults = Nothing
    , _tlFields = Nothing
    , _tlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TrainedmodelsList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TrainedmodelsList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | The project associated with the model.
tlProject :: Lens' TrainedmodelsList' Text
tlProject
  = lens _tlProject (\ s a -> s{_tlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIp :: Lens' TrainedmodelsList' (Maybe Text)
tlUserIp = lens _tlUserIp (\ s a -> s{_tlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TrainedmodelsList' (Maybe Text)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | Pagination token.
tlPageToken :: Lens' TrainedmodelsList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | OAuth 2.0 token for the current user.
tlOauthToken :: Lens' TrainedmodelsList' (Maybe Text)
tlOauthToken
  = lens _tlOauthToken (\ s a -> s{_tlOauthToken = a})

-- | Maximum number of results to return.
tlMaxResults :: Lens' TrainedmodelsList' (Maybe Word32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TrainedmodelsList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

-- | Data format for the response.
tlAlt :: Lens' TrainedmodelsList' Alt
tlAlt = lens _tlAlt (\ s a -> s{_tlAlt = a})

instance GoogleRequest TrainedmodelsList' where
        type Rs TrainedmodelsList' = List
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedmodelsList'{..}
          = go _tlQuotaUser (Just _tlPrettyPrint) _tlProject
              _tlUserIp
              _tlKey
              _tlPageToken
              _tlOauthToken
              _tlMaxResults
              _tlFields
              (Just _tlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedmodelsListResource)
                      r
                      u
