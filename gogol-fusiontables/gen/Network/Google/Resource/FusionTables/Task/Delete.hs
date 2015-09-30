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
    , tUserIp
    , tKey
    , tOauthToken
    , tTableId
    , tFields
    , tAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a specific task by its ID, unless that task has already started
-- running.
--
-- /See:/ 'taskDelete'' smart constructor.
data TaskDelete' = TaskDelete'
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tTaskId      :: !Text
    , _tUserIp      :: !(Maybe Text)
    , _tKey         :: !(Maybe Text)
    , _tOauthToken  :: !(Maybe Text)
    , _tTableId     :: !Text
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'tUserIp'
--
-- * 'tKey'
--
-- * 'tOauthToken'
--
-- * 'tTableId'
--
-- * 'tFields'
--
-- * 'tAlt'
taskDelete'
    :: Text -- ^ 'taskId'
    -> Text -- ^ 'tableId'
    -> TaskDelete'
taskDelete' pTTaskId_ pTTableId_ =
    TaskDelete'
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tTaskId = pTTaskId_
    , _tUserIp = Nothing
    , _tKey = Nothing
    , _tOauthToken = Nothing
    , _tTableId = pTTableId_
    , _tFields = Nothing
    , _tAlt = JSON
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
tUserIp :: Lens' TaskDelete' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TaskDelete' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TaskDelete' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | Table from which the task is being deleted.
tTableId :: Lens' TaskDelete' Text
tTableId = lens _tTableId (\ s a -> s{_tTableId = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TaskDelete' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TaskDelete' Alt
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TaskDelete' where
        type Rs TaskDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TaskDelete'{..}
          = go _tQuotaUser (Just _tPrettyPrint) _tTaskId
              _tUserIp
              _tKey
              _tOauthToken
              _tTableId
              _tFields
              (Just _tAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TaskDeleteResource)
                      r
                      u
