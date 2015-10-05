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
-- Module      : Network.Google.Resource.FusionTables.Task.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a specific task by its ID, unless that task has already started
-- running.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTaskDelete@.
module Network.Google.Resource.FusionTables.Task.Delete
    (
    -- * REST Resource
      TaskDeleteResource

    -- * Creating a Request
    , taskDelete'
    , TaskDelete'

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tTaskId
    , tUserIP
    , tKey
    , tOAuthToken
    , tTableId
    , tFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTaskDelete@ which the
-- 'TaskDelete'' request conforms to.
type TaskDeleteResource =
     "tables" :>
       Capture "tableId" Text :>
         "tasks" :>
           Capture "taskId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a specific task by its ID, unless that task has already started
-- running.
--
-- /See:/ 'taskDelete'' smart constructor.
data TaskDelete' = TaskDelete'
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tTaskId      :: !Text
    , _tUserIP      :: !(Maybe Text)
    , _tKey         :: !(Maybe Key)
    , _tOAuthToken  :: !(Maybe OAuthToken)
    , _tTableId     :: !Text
    , _tFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tTaskId'
--
-- * 'tUserIP'
--
-- * 'tKey'
--
-- * 'tOAuthToken'
--
-- * 'tTableId'
--
-- * 'tFields'
taskDelete'
    :: Text -- ^ 'taskId'
    -> Text -- ^ 'tableId'
    -> TaskDelete'
taskDelete' pTTaskId_ pTTableId_ =
    TaskDelete'
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tTaskId = pTTaskId_
    , _tUserIP = Nothing
    , _tKey = Nothing
    , _tOAuthToken = Nothing
    , _tTableId = pTTableId_
    , _tFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TaskDelete' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TaskDelete' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | The identifier of the task to delete.
tTaskId :: Lens' TaskDelete' Text
tTaskId = lens _tTaskId (\ s a -> s{_tTaskId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIP :: Lens' TaskDelete' (Maybe Text)
tUserIP = lens _tUserIP (\ s a -> s{_tUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TaskDelete' (Maybe Key)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | OAuth 2.0 token for the current user.
tOAuthToken :: Lens' TaskDelete' (Maybe OAuthToken)
tOAuthToken
  = lens _tOAuthToken (\ s a -> s{_tOAuthToken = a})

-- | Table from which the task is being deleted.
tTableId :: Lens' TaskDelete' Text
tTableId = lens _tTableId (\ s a -> s{_tTableId = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TaskDelete' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

instance GoogleAuth TaskDelete' where
        authKey = tKey . _Just
        authToken = tOAuthToken . _Just

instance GoogleRequest TaskDelete' where
        type Rs TaskDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TaskDelete'{..}
          = go _tTableId _tTaskId _tQuotaUser
              (Just _tPrettyPrint)
              _tUserIP
              _tFields
              _tKey
              _tOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy TaskDeleteResource)
                      r
                      u
