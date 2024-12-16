{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Classroom.Courses.CourseWork.StudentSubmissions.TurnIn
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Turns in a student submission. Turning in a student submission transfers ownership of attached Drive files to the teacher and may also update the submission state. This may only be called by the student that owns the specified student submission. This request must be made by the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or course work, turn in the requested student submission, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course, course work, or student submission does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.studentSubmissions.turnIn@.
module Gogol.Classroom.Courses.CourseWork.StudentSubmissions.TurnIn
    (
    -- * Resource
      ClassroomCoursesCourseWorkStudentSubmissionsTurnInResource

    -- ** Constructing a Request
    , ClassroomCoursesCourseWorkStudentSubmissionsTurnIn (..)
    , newClassroomCoursesCourseWorkStudentSubmissionsTurnIn
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.courseWork.studentSubmissions.turnIn@ method which the
-- 'ClassroomCoursesCourseWorkStudentSubmissionsTurnIn' request conforms to.
type ClassroomCoursesCourseWorkStudentSubmissionsTurnInResource
     =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "courseWork" Core.:>
             Core.Capture "courseWorkId" Core.Text Core.:>
               "studentSubmissions" Core.:>
                 Core.CaptureMode "id" "turnIn" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON]
                                 TurnInStudentSubmissionRequest
                                 Core.:> Core.Post '[Core.JSON] Empty

-- | Turns in a student submission. Turning in a student submission transfers ownership of attached Drive files to the teacher and may also update the submission state. This may only be called by the student that owns the specified student submission. This request must be made by the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or course work, turn in the requested student submission, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course, course work, or student submission does not exist.
--
-- /See:/ 'newClassroomCoursesCourseWorkStudentSubmissionsTurnIn' smart constructor.
data ClassroomCoursesCourseWorkStudentSubmissionsTurnIn = ClassroomCoursesCourseWorkStudentSubmissionsTurnIn
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    , courseId :: Core.Text
      -- | Identifier of the course work.
    , courseWorkId :: Core.Text
      -- | Identifier of the student submission.
    , id :: Core.Text
      -- | Multipart request metadata.
    , payload :: TurnInStudentSubmissionRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkStudentSubmissionsTurnIn' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkStudentSubmissionsTurnIn 
    ::  Core.Text
       -- ^  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
    -> Core.Text
       -- ^  Identifier of the course work. See 'courseWorkId'.
    -> Core.Text
       -- ^  Identifier of the student submission. See 'id'.
    -> TurnInStudentSubmissionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ClassroomCoursesCourseWorkStudentSubmissionsTurnIn
newClassroomCoursesCourseWorkStudentSubmissionsTurnIn courseId courseWorkId id payload =
  ClassroomCoursesCourseWorkStudentSubmissionsTurnIn
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , courseId = courseId
    , courseWorkId = courseWorkId
    , id = id
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomCoursesCourseWorkStudentSubmissionsTurnIn
         where
        type Rs
               ClassroomCoursesCourseWorkStudentSubmissionsTurnIn
             = Empty
        type Scopes
               ClassroomCoursesCourseWorkStudentSubmissionsTurnIn
             = '[Classroom'Coursework'Me]
        requestClient
          ClassroomCoursesCourseWorkStudentSubmissionsTurnIn{..}
          = go courseId courseWorkId id xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ClassroomCoursesCourseWorkStudentSubmissionsTurnInResource)
                      Core.mempty

